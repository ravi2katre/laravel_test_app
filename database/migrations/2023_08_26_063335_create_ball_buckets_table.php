<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBallBucketsTable extends Migration
{
    public function up()
    {
        Schema::create('ball_buckets', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('ball_id');
            $table->unsignedBigInteger('bucket_id');
            $table->unsignedBigInteger('purchase_id');
            $table->integer('quantity');
            $table->timestamps();

            $table->foreign('ball_id')->references('id')->on('balls')->onDelete('cascade');
            $table->foreign('bucket_id')->references('id')->on('buckets')->onDelete('cascade');
            $table->foreign('purchase_id')->references('id')->on('purchases')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('ball_buckets');
    }
}
