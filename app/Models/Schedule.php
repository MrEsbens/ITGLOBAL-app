<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Schedule extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'route_stop_id',
        'bus_id',
        'arrival_time',
    ];  
}
