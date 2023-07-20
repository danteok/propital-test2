<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\BuildingProject;
use App\City;
use Illuminate\Support\Facades\DB;


class PropitalController extends Controller
{
    /**
     * Visualización del mapa: 
     * 
     */
    public function map(Request $request) {

        $data = BuildingProject::select('id','name','latitude','longitude')
                ->orderBy('created_at')->limit(10)->get();

        return response()->json(['result'=>$data]);

    }


    /**
     * Marcadores de proyectos
     * 
     */
    public function markers(Request $request) {

        $data = BuildingProject::select('id','name','latitude','longitude','image')->limit(100)->get();

        return response()->json(['result'=>$data]);

    }

    /**
     * Informacion detallada
     * 
     */
    public function project(Request $request) {

        $data = BuildingProject::find($request->id);

        return response()->json(['result'=>$data]);

    }

    /**
     * Búsqueda y filtrado
     * 
     */
    public function search(Request $request) {

        $buildingProject = BuildingProject::where('id','>=',1);

        if($request->city_id){
            $buildingProject->where('city_id','=',$request->city_id);
        }
        if($request->building_type_id){
            $buildingProject->where('building_type_id','=',$request->building_type_id);
        }
        if($request->price_from){
            $buildingProject->where('price','>=',$request->price_from);
        }
        if($request->price_to){
            $buildingProject->where('price','<=',$request->price_to);
        }
        if($request->surface){
            $buildingProject->where(DB::raw('(measure_front * measure_depth)') ,'=',$request->surface);
        }
        if($request->category_id){
            $buildingProject->where('category_id','=',$request->category_id);
        }

        $data = $buildingProject->paginate(10);

        return response()->json(['result'=>$data]);

    }

}
