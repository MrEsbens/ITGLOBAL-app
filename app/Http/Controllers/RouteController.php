<?php

namespace App\Http\Controllers;

use App\Models\Route;
use App\Models\RouteStop;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class RouteController extends Controller
{
    public function changeStop(Request $request){
        $validator=Validator::make($request->all(),[
            'bus-number' =>'required',
            'stop-before' =>'integer|required',
            'stop-after' =>'integer|required',
        ]);
        if($validator->fails()){
            return response('Bad Request', 400);
        }

        $validatedData = $validator->validate();
        $validatedData['bus-number']  = strval($validatedData['bus-number']);
        $routes=Route::where('route_name', $validatedData['bus-number'])->get();
        if($routes->isEmpty()){
            return response('Route not found', 404);
        }
        foreach($routes as $route) {
            $route_stop = RouteStop::where([
                ['route_id', $route['id']],
                ['stop_id', $validatedData['stop-before']],
            ])->first();
            $route_stop->stop_id = intval($validatedData['stop-after']);
            $route_stop->save();
        }
        return response('Stop successfully changed', 200);
    }
}
