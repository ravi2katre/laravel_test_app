<?php

namespace App\Traits;

use Illuminate\Support\Facades\DB;

trait TruncateTables
{
    public function truncateTables()
    {
        DB::table('purchases')->truncate();
        DB::table('ball_buckets')->truncate();
    }
}
