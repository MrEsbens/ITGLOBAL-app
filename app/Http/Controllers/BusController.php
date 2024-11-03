<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\RouteStop;
use App\Models\Route;
use App\Models\Schedule;
use App\Models\Stop;

class BusController extends Controller
{
    public function findBus(Request $request){
        $route_stops_to= array();
        $response = array();
        $arrival = array();
        $validator=Validator::make($request->all(),[
            'from' =>'integer|required',
            'to' =>'integer|required',
        ]);
        if($validator->fails()){
            return response('Bad Request', 400);
        }
        $validatedData = $validator->validate();
        $response['from'] = $validatedData['from'];
        $response['to'] = $validatedData['to'];
        $route_stops_from = RouteStop::where('stop_id', $validatedData['from'])->get();
        foreach($route_stops_from as $from){
            $select = RouteStop::where([
                ['stop_id', $validatedData['to']],
                ['route_id', $from->route_id],
                ['stop_order', '>=', $from->stop_order],
            ])->first();

            if(!empty($select)){
                $route_stops_to[] = $select;
            }
        }
        $route_stops_from=null;
        foreach($route_stops_to as $to){
            $route_stops_from[]= RouteStop::where([
                ['stop_id', $validatedData['from']],
                ['route_id', $to->route_id],
                ['stop_order', '<=', $to->stop_order],
            ])->first();
        }
        foreach($route_stops_to as $to){
            $max = RouteStop::where('route_id', $to['route_id'])->get()->max();
            $route = Route::find($to['route_id']);
            $destination_stop = RouteStop::where([
                ['route_id', $to['route_id']],
                ['stop_order',$max['stop_order']]
            ])->first(); 
            $destination_stop_name = Stop::find($destination_stop['stop_id']);
            $departure_stop = RouteStop::where([
                ['route_id', $route['id']],
                ['stop_id', $validatedData['from'],]
            ])->first();
            $arrival = Schedule::where([
                ['bus_id', $route['bus_id']],
                ['route_stop_id',$departure_stop['id']],
            ])->first();
            if(empty($response['buses'][$route['route_name']])){
                $response['buses'][$route['route_name']]['route']= 'Автобус № '.$route['route_name'].' в сторону ост.'.$destination_stop_name['name'];
            }
            if($arrival){
                $response['buses'][$route['route_name']]['next_arrivals'][] = $arrival['arrival_time'];
            }
        }
        return response()->json($response);
    }
}
