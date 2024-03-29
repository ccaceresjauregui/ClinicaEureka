<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Patient extends Model
{
    //

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'lastname', 'document_number', 'email', 'others'
    ];
}
