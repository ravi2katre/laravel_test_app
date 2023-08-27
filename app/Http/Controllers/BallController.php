<?php
// app/Http/Controllers/BallController.php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Ball;
use DB;
use App\Traits\TruncateTables;

class BallController extends Controller
{
    use TruncateTables;

    public function index()
    {
        $balls = Ball::all();
        return view('balls.index', compact('balls'));
    }

    public function store(Request $request)
    {
        // Call the function to truncate tables
        $this->truncateTables();


        Ball::create($request->all());
        return redirect()->route('balls.index')->with('success', 'Ball created successfully!');
    }

    public function destroy(Ball $ball)
    {
        // Delete the specified ball
        $ball->delete();
        // Call the function to truncate tables
        $this->truncateTables();


        // Redirect back or to another appropriate route
        return redirect()->back()->with('success', 'Ball deleted successfully.');
    }
}

