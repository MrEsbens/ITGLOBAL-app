<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('buses')->insert([
            ['number' => 211995],
            ['number' => 211996],
            ['number' => 211997],
            ['number' => 211998],
            ['number' => 211999],
            ['number' => 212000],
            ['number' => 212001],
            ['number' => 212002],
            ['number' => 212003],
            ['number' => 212004],
            ['number' => 212005],
            ['number' => 212006],
        ]);
    }
}
