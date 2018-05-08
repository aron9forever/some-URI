<?php

namespace App\Http\Controllers;

use App\Job;
use App\JobType;
use Illuminate\Http\Request;


class JobController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Job::all();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexTypes()
    {
        return JobType::all();
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
        $request->validate([
            'property_address' => 'required',
            'supplier_title' => 'required',
            'job_type' => 'required',
            'notes' => 'max:65000'
        ]);

        /*if($property = Property::find($request->property_address)) {*/
            return $property->jobs()->create($request->only(['supplier_title', 'job_type', 'notes']));
            /*}

        //This shouldn't happen unless someone is tampering with the forms or manually POSTing
        return response()->json('', 404);*/
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Job $job)
    {
        return $job;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Job $job)
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
    public function update(Request $request, Job $job)
    {
        $request->validate([
            'property_address' => 'required',
            'supplier_title' => 'required',
            'job_type' => 'required',
            'notes' => 'max:65000'
        ]);

        return $job->update($request->only(['property_address', 'supplier_title', 'job_type', 'notes']));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Job $job)
    {
        $job->delete();
        return response()->json('', 204);
    }
}
