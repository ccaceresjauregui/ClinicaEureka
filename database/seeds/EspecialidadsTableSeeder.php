<?php

use Illuminate\Database\Seeder;

class EspecialidadsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        //factory(App\Especialidad::class, 10)->create();

        Especialidad::create([
            'name' => 'Oftalmologia',
            'description' => 'Consulta ojos',
            
        ]);

        Especialidad::create([
            'name' => 'Audiometria',
            'description' => 'Consulta oidos',
            
        ]);

        Especialidad::create([
            'name' => 'Medicina',
            'description' => 'Consulta medica',
            
        ]);

        Especialidad::create([
            'name' => 'Psicologia',
            'description' => 'Consulta psicologica',
            
        ]);

        Especialidad::create([
            'name' => 'Neurologia',
            'description' => 'Consulta neurologia',
            
        ]);

    }
}
