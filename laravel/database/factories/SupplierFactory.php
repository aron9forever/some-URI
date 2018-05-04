<?php

use App\Supplier;
use Faker\Generator as Faker;

$factory->define(Supplier::class, function (Faker $faker) {
    return [
        'title' => $faker->company . " " . $faker->companySuffix,
    ];
});
