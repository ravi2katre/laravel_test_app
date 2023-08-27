<?php
// app/Http/Controllers/PurchaseController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ball;
use App\Models\Purchase;
use App\Models\Bucket;
use App\Models\BallBucket;

class PurchaseController extends Controller
{
    public function create()
    {
        $balls = Ball::all();
        return view('purchase.create', compact('balls'));
    }

    public function store(Request $request)
    {
        $ballQuantities = $request->input('ball_quantities');

        foreach ($ballQuantities as $ballId => $quantity) {
            if ($quantity > 0) {
                Ball::findOrFail($ballId); // Ensure ball exists

                for ($i = 0; $i < $quantity; $i++) {
                    Purchase::create([
                        'user_id' => 1,
                        'ball_id' => $ballId,
                        'quantity' => 1, // Always 1 for each row
                    ]);
                }
            }
        }
        $this->assignPurchasesToBuckets();
        //return redirect()->route('purchase.create')->with('success', 'Balls purchased successfully!');
        return redirect()->route('report.bucket')->with('success', 'Balls purchased and assigned successfully!');
    }

    public function assignPurchasesToBuckets()
    {
        $buckets = Bucket::all();

        foreach ($buckets as $bucket) {
            $bucketRemainingCapacity = $bucket->capacity - $bucket->ballBuckets->sum('ball.size');

            if ($bucketRemainingCapacity <= 0) {
                // No more space in this bucket, skip to the next one
                continue;
            }

            $unassignedPurchases =  Purchase::whereDoesntHave('ballBuckets')->get();
            foreach ($unassignedPurchases as $purchase) {
                $ball = $purchase->ball;
                $ballSize = $ball->size;

                if ($bucketRemainingCapacity >= $ballSize) {
                    // Assign the purchase to the bucket
                    BallBucket::create([
                        'ball_id' => $ball->id,
                        'bucket_id' => $bucket->id,
                        'purchase_id' => $purchase->id,
                        'quantity' => 1, // Always 1 for each row
                    ]);

                    // Mark the purchase as assigned
                    $purchase->update(['assigned' => true]);

                    // Update the bucket's remaining capacity
                    $bucketRemainingCapacity -= $ballSize;
                }
            }
        }
    }
}
