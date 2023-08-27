<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Purchase; // Import the Purchase model
use App\models\Ball;
use App\models\Bucket;

class BallBucket extends Model
{
    protected $fillable = ['ball_id', 'bucket_id', 'purchase_id', 'quantity'];

    public function ball()
    {
        return $this->belongsTo(Ball::class);
    }
    public function ballBuckets()
    {
        return $this->hasMany(BallBucket::class);
    }
    public function bucket()
    {
        return $this->belongsTo(Bucket::class);
    }

    public function purchase()
    {
        return $this->belongsTo(Purchase::class);
    }
    


}

