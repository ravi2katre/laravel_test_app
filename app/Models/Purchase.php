<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Ball;
use App\Models\User;
class Purchase extends Model
{
    protected $fillable = ['user_id', 'ball_id'];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function ball()
    {
        return $this->belongsTo(Ball::class);
    }

    public function ballBuckets()
    {
        return $this->hasMany(BallBucket::class);
    }

    // Purchase.php (Purchase model)


}


