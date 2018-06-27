<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CurrentRequest;
use App\Http\Resources\CurrentRequests;
use Sentinel;

class RequestController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        {
    /*"username": "01765768601",
    "password": "123456",
    "lat":"23.10",
    "lng":"31.10",
    "des_lat":"23.20",
    "des_lng":"31.20",
    "country_code":"BD",
    "address":"Dhanmondi",
    "status":"1"*/
}
        $user = Sentinel::authenticate($request->all());
        if($user)
        {
            $user_request = new CurrentRequest;
            $user_request->user_id = $user->id;
            $user_request->gender = $user->gender;
            $user_request->lat = $request->lat;
            $user_request->lng = $request->lng;
            $user_request->des_lat = $request->des_lat;
            $user_request->des_lng = $request->des_lng;
            $user_request->country_code = $request->country_code;
            $user_request->address = $request->address;
            $user_request->status = $request->status;
            $user_request->save();

            if($user->share_with == "Both"){
                $current_requests = CurrentRequest::where('address', $user_request->address)
                                    ->where('status', 1)
                                    ->where('user_id', '!=', $user->id)->get();
            }
            else{
                $current_requests = CurrentRequest::where('address', $user_request->address)
                                    ->where('status', 1)
                                    ->where('user_id', '!=', $user->id)
                                    ->where('gender', $user->share_with)->get();
            }            
            return new CurrentRequests($current_requests);
        }
        else
        {
            return abort("401");
        }        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
