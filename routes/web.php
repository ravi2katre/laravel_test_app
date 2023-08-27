<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BucketController;
use App\Http\Controllers\BallController;
use App\Http\Controllers\PurchaseController;
use App\Http\Controllers\BucketBallController;
use App\Http\Controllers\ReportController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



Route::get('/buckets', [BucketController::class, 'index'])->name('buckets.index');
Route::post('/buckets', [BucketController::class, 'store'])->name('buckets.store');
Route::delete('/buckets/{bucket}', [BucketController::class, 'destroy'])->name('buckets.destroy');

// Define other routes

Route::get('/balls', [BallController::class, 'index'])->name('balls.index');
Route::post('/balls', [BallController::class, 'store'])->name('balls.store');
Route::delete('/balls/{ball}', [BallController::class, 'destroy'])->name('balls.destroy');
// Define other routes

Route::get('/purchase', [PurchaseController::class, 'create'])->name('purchase.create');
Route::post('/purchase', [PurchaseController::class, 'store'])->name('purchase.store');
// Define other routes

Route::get('/report', [ReportController::class, 'bucketReport'])->name('report.bucket');