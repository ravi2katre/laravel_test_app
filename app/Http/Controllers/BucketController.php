<?php
// app/Http/Controllers/BucketController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bucket;
use DB;
use App\Traits\TruncateTables;

class BucketController extends Controller
{
    use TruncateTables;

    public function index()
    {
        $buckets = Bucket::all();
        return view('buckets.index', compact('buckets'));
    }

    public function store(Request $request)
    {
        // Call the function to truncate tables
        $this->truncateTables();


        //dd($request->all());
        Bucket::create($request->all());
        return redirect()->route('buckets.index')->with('success', 'Bucket created successfully!');
    }

    public function destroy(Bucket $bucket)
    {
        $bucket->delete();
        // Call the function to truncate tables
        $this->truncateTables();

        return redirect()->route('buckets.index')
            ->with('success', 'Bucket deleted successfully.');
    }
}

