<?php
// app/Http/Controllers/BucketBallController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bucket;
use App\Models\Ball;
use App\Models\Purchase;

class BucketBallController extends Controller
{
    public function purchaseBalls(Request $request)
    {
        $ballQuantities = $request->input('ball_quantities');

        foreach ($ballQuantities as $ballId => $quantity) {
            if ($quantity > 0) {
                $ball = Ball::findOrFail($ballId);

                for ($i = 0; $i < $quantity; $i++) {
                    $purchase = Purchase::create([
                        'user_id' => 1,
                    ]);

                    BallBucket::create([
                        'ball_id' => $ballId,
                        'purchase_id' => $purchase->id,
                    ]);
                }

                $ball->update(['quantity' => $ball->quantity - $quantity]);
            }
        }
        
        return redirect()->route('purchase.balls')
            ->with('message', 'Balls purchased successfully!');
    }

    public function purchaseBallForm()
    {
        $balls = Ball::all();
        //dd($balls);
        return view('purchase_balls', compact('balls'));
    }
    
    
    public function storeBall(Request $request)
    {
        // Validate the form input
        $request->validate([
            'ball_name' => 'required|string|max:255',
            'ball_size' => 'required|numeric|min:0',
        ]);

        // Create the ball
        Ball::create([
            'ball_name' => $request->input('ball_name'),
            'ball_size' => $request->input('ball_size'),
        ]);

        return redirect()->route('create.simple.ball')
            ->with('message', 'Ball created successfully!');
    }
    public function createSimpleBallForm()
    {
        return view('bucket.create_ball_simple');
    }

    public function store(Request $request)
    {
        // Validate the form input
        $request->validate([
            'bucket_name' => 'required|string|max:255',
            'capacity' => 'required|numeric|min:0',
        ]);

        // Create the bucket
        Bucket::create([
            'bucket_name' => $request->input('bucket_name'),
            'capacity' => $request->input('capacity'),
        ]);

        return redirect()->route('create.bucket')
            ->with('message', 'Bucket created successfully!');
    }

    public function createBucketForm()
    {
        return view('bucket.create_bucket');
    }
}

