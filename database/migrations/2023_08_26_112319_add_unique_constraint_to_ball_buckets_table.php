<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUniqueConstraintToBallBucketsTable extends Migration
{
    public function up()
    {
        Schema::table('ball_buckets', function (Blueprint $table) {
            $table->unique('purchase_id');
        });
    }

    public function down()
    {
        Schema::table('ball_buckets', function (Blueprint $table) {
            $table->dropUnique('ball_buckets_purchase_id_unique');
        });
    }
}
