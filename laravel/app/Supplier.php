<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $primaryKey = 'title';
    public $incrementing = false;
    public $timestamps = false;

    public function jobs() {
        return $this->hasMany(Job::class, 'supplier_title');
    }

    //Has Many Through is more appropriate than Many to Many
    public function job_types() {
        return $this->hasManyThrough(
            JobType::class,
            Job::class,
            'supplier_title', // Foreign key on jobs table...
            'title', // Foreign key on jobtypes table...
            'title', // Local key on suppliers table...
            'job_type' // Local key on jobs table...
        );
    }
}
