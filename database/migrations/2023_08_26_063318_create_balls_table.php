<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBallsTable extends Migration
{
    public function up()
    {
        Schema::create('balls', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->integer('size');
            $table->integer('quantity')->default(0);
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('balls');
    }
}
