<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ScheduleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $route_stop_id=1;
        $hours=8;
        for($i = 1; $i <=12; $i+=2){
            $minutes=0;
            for($j = 1; $j <=10; $j++){
                DB::table('schedules')->insert([
                    [
                        'route_stop_id' => $route_stop_id,
                        'bus_id' => $i,
                        'arrival_time' => $hours.":".$minutes,
                    ],
                    [
                        'route_stop_id' => $route_stop_id+1,
                        'bus_id' => $i+1,
                        'arrival_time' => $hours.":".$minutes,
                    ]
                ]);
                $route_stop_id+=2;
                $minutes+=5;
            }
            $hours+=1;
            if($i==5){
                $hours=8;
            }
        }
    }
}
