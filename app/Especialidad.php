<?php

namespace App;
//namespace App\Especialidad;

use Illuminate\Database\Eloquent\Model;



class Especialidad extends Model
{
    //
    protected $fillable = [
        'name', 'description',
    ];

   /* public function especialidads(): BelongsToMany
    {
        return $this->belongsToMany(config('especialidads'))->withTimestamps();
    }*/
}
