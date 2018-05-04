<?php

namespace App\Http\Controllers;

use App\Property;
use App\PropertyType;
use Illuminate\Http\Request;

class PropertyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return Property::all();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexTypes()
    {
        return PropertyType::all();
    }
}
