<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RouteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('routes')->insert([
            ['route_name' => '135', 'bus_id' =>'1'],
            ['route_name' => '135', 'bus_id' =>'2'],
            ['route_name' => '135', 'bus_id' =>'3'],
            ['route_name' => '135', 'bus_id' =>'4'],
            ['route_name' => '135', 'bus_id' =>'5'],
            ['route_name' => '135', 'bus_id' =>'6'],
            ['route_name' => '267', 'bus_id' =>'7'],
            ['route_name' => '267', 'bus_id' =>'8'],
            ['route_name' => '267', 'bus_id' =>'9'],
            ['route_name' => '267', 'bus_id' =>'10'],
            ['route_name' => '267', 'bus_id' =>'11'],
            ['route_name' => '267', 'bus_id' =>'12'],
        ]);
    }
}
