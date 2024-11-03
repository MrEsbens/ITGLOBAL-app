<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BusController;
use App\Http\Controllers\RouteController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('/find-bus', [BusController::class, 'findBus']);
Route::post('/change-stop', [RouteController::class, 'changeStop']);