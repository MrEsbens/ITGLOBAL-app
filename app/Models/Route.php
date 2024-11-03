<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Route extends Model
{
    public $timestamps = false;
    protected $fillable=[
        'rote_name',
        'bus_id',
    ];
}
