<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RouteStopSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        for($i=1; $i<=12; $i+=2){
            if($i<=5){
                for($j=0; $j<10; $j++){
                    DB::table('route_stops')->insert([
                        [
                            'route_id' => $i,
                            'stop_id' => $j+1,
                            'stop_order' => $j+1,
                        ],
                        [
                            'route_id' => $i+1,
                            'stop_id' => $j+1,
                            'stop_order' => 10-$j,
                        ]
                    ]);
                }
            }
            else{
                for($j=10; $j<20; $j++){
                    DB::table('route_stops')->insert([
                        [
                            'route_id' => $i,
                            'stop_id' => $j+1,
                            'stop_order' => $j-9,
                        ],
                        [
                            'route_id' => $i+1,
                            'stop_id' => $j+1,
                            'stop_order' => 20-$j,
                        ]
                    ]);
                }
            }
            
        }
    }
}
