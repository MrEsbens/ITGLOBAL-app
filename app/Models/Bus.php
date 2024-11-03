<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bus extends Model
{
    public $timestamps = false;
    protected $fillable=[
        'number',
    ];
}
