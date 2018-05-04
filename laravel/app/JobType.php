<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JobType extends Model
{
    protected $primaryKey = 'title';
    public $incrementing = false;
    public $timestamps = false;
}
