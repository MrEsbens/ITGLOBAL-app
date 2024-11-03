<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RouteStop extends Model
{
    public $timestamps = false;
    protected $fillable = [
        'route_id',
        'stop_id',
        'stop_order',
    ];
}
