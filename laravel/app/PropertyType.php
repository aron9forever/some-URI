<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PropertyType extends Model
{
    protected $primaryKey = 'type';
    public $incrementing = false;
    public $timestamps = false;
}
