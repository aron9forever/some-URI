<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::resource('job', 'JobController');
Route::get('property', 'PropertyController@index');
Route::get('job_type', 'JobController@indexTypes');
Route::get('property_type', 'PropertyController@indexTypes');
Route::get('supplier', 'SupplierController@index');
