<?php
// app/Http/Controllers/BallController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ball;
use DB;

class BallController extends Controller
{
    public function index()
    {
        $balls = Ball::all();
        return view('balls.index', compact('balls'));
    }

    public function store(Request $request)
    {
        // Clear the Purchase and BallBucket tables
        DB::table('purchases')->truncate();
        DB::table('ball_buckets')->truncate();

        Ball::create($request->all());
        return redirect()->route('balls.index')->with('success', 'Ball created successfully!');
    }

    
}

