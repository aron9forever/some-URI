<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    protected $primaryKey = 'address';
    public $incrementing = false;
    public $timestamps = false;

    public function jobs() {
        return $this->hasMany(Job::class, 'property_address');
    }
}
