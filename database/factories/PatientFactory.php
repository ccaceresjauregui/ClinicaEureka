<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Patient;
use Faker\Generator as Faker;

$factory->define(Patient::class, function (Faker $faker) {
    return [
        //

        'name' => $faker->sentence,
        'lastname' => $faker->sentence,
        'document_number' => $faker->sentence,
        'email' => $faker->sentence,
        'others' => $faker->sentence
        
    ];
});
