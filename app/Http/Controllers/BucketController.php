<?php
// app/Http/Controllers/BucketController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bucket;
use DB;
class BucketController extends Controller
{
    public function index()
    {
        $buckets = Bucket::all();
        return view('buckets.index', compact('buckets'));
    }

    public function store(Request $request)
    {
        // Clear the Purchase and BallBucket tables
        DB::table('purchases')->truncate();
        DB::table('ball_buckets')->truncate();

        //dd($request->all());
        Bucket::create($request->all());
        return redirect()->route('buckets.index')->with('success', 'Bucket created successfully!');
    }
    
    public function destroy(Bucket $bucket)
    {
        $bucket->delete();

        return redirect()->route('buckets.index')
            ->with('success', 'Bucket deleted successfully.');
    }
}

