<?php

use Illuminate\Database\Seeder;
use App\Patient;

class PatientsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // 
         Patient::create([
            'name' => 'Roberto',
            'lastname' => 'Perez',
            'document_number' => '00123456',
            'email' => 'roberto@example.com',
            'others' => 'Ninguno',
        ]);

         Patient::create([
            'name' => 'Rosa',
            'lastname' => 'Nuñez',
            'document_number' => '11123456',
            'email' => 'rosa@example.com',
            'others' => 'Ninguno',
        ]);

        Patient::create([
            'name' => 'Paola',
            'lastname' => 'Oviedo',
            'document_number' => '22123456',
            'email' => 'paola@example.com',
            'others' => 'Ninguno',
        ]);

        Patient::create([
            'name' => 'Ana',
            'lastname' => 'Gutierrez',
            'document_number' => '33123456',
            'email' => 'ana@example.com',
            'others' => 'Ninguno',
        ]);

        Patient::create([
            'name' => 'Lucia',
            'lastname' => 'Herrera',
            'document_number' => '44123456',
            'email' => 'lucia@example.com',
            'others' => 'Ninguno',
        ]);

    }
}
