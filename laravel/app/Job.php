<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    protected $fillable = [
        'property_address', 'supplier_title', 'job_type', 'notes'
    ];
}
