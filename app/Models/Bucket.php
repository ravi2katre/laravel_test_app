<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Purchase; // Import the Purchase model
use App\Models\ballBuckets;

class Bucket extends Model
{
    protected $fillable = ['name', 'capacity'];

    // Define any relationships or methods related to buckets here
    public function ballBuckets()
    {
        return $this->hasMany(BallBucket::class);
    }
    


public function unassignedPurchases()
{
    return Purchase::whereDoesntHave('ballBuckets', function ($query) {
        $query->where('bucket_id', $this->id);
    })->get();
}

public function getUnassignedPurchasesAttribute()
    {
        return Purchase::whereDoesntHave('ballBuckets', function ($query) {
            $query->where('bucket_id', $this->id);
        })->get();
    }

    public function getFilledCapacityAttribute()
    {
        return $this->ballBuckets->sum('ball.size');
    }

    public function getRemainingCapacityAttribute()
    {
        return $this->capacity - $this->filledCapacity;
    }

    public function allocateUnassignedPurchases()
    {
        foreach ($this->ballBuckets as $ballBucket) {
            // Skip if the ball is already occupied in this bucket
            if ($ballBucket->occupied) {
                continue;
            }

            $remainingCapacity = $this->remainingCapacity();

            // Allocate unassigned purchases while considering remaining capacity
            // and the number of unassigned purchases for the corresponding ball
            $purchases = $this->unassignedPurchasesGrouped->get($ballBucket->ball->id);
            
            if ($purchases && count($purchases) <= $remainingCapacity) {
                // Allocate the unassigned purchases to the bucket
                // Mark the ball as occupied for this bucket
                // Update the remaining capacity
            }
        }
    }
}
