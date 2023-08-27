<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Bucket;
use App\Models\BallBucket;
use App\Models\Purchase;
use DB;

class ReportController extends Controller
{
    
    
    public function index()
    {
        $buckets = Bucket::with('ballBuckets', 'ballBuckets.ball')
            ->get();

        return view('report.index', compact('buckets'));
    }

    public function bucketReport()
    {
       
        $bucketsWithBalls = BallBucket::with('bucket', 'ball', 'purchase')
            ->select('bucket_id', 'ball_id', DB::raw('SUM(quantity) as total_quantity'))
            ->groupBy('bucket_id', 'ball_id')
            ->get();


    return view('report.bucket_report', compact('bucketsWithBalls'));
    }

}


