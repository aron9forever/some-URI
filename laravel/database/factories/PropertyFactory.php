<?php

use App\Property;
use App\PropertyType;
use Faker\Generator as Faker;

$factory->define(Property::class, function (Faker $faker) {
    $property_types = PropertyType::all()->pluck('type')->toArray();

    return [
        'address' => $faker->address,
        'property_type' => $faker->randomElement($property_types),
    ];
});
