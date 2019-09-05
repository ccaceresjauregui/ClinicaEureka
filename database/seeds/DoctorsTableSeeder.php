<?php

use Illuminate\Database\Seeder;
use App\Especialidad;
use App\Doctor;

class DoctorsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        //factory(App\Doctor::class, 10)->create();
        Doctor::create([
            'name' => 'Oscar',
            'lastname' => 'Vargas',
            'cmp' => '12345',
            
        ]);

        Doctor::create([
            'name' => 'Juan',
            'lastname' => 'Garcia',
            'cmp' => '12367',
            
        ]);

        Doctor::create([
            'name' => 'Carla',
            'lastname' => 'Garcia',
            'cmp' => '12389',
            
        ]);
    }
}
