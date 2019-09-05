<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

//Rutas
Route::middleware(['auth'])->group(function(){
    Route::post('roles/store', 'RoleController@store')->name('roles.store');
    //	->middleware('permission:roles.create');
    
    Route::get('roles', 'RoleController@index')->name('roles.index');
    	//->middleware('permission:roles.index');
    
    Route::get('roles/create', 'RoleController@create')->name('roles.create');
    	//->middleware('permission:roles.create');

    Route::put('roles/{role}', 'RoleController@update')->name('roles.update');
    	//->middleware('permission:roles.edit');

    Route::get('roles/{role}', 'RoleController@show')->name('roles.show');
    	//->middleware('permission:roles.show');


    Route::delete('roles/{role}', 'RoleController@destroy')->name('roles.destroy');
    	//->middleware('permission:roles.destroy');


    Route::get('roles/{role}/edit', 'RoleController@edit')->name('roles.edit');
    	//->middleware('permission:roles.edit');


//Usuarios
    
    Route::get('users', 'UserController@index')->name('users.index');
    	//->middleware('permission:users.index');
    
    Route::put('users/{user}', 'UserController@update')->name('users.update');
    	//->middleware('permission:users.edit');

    Route::get('users/{user}', 'UserController@show')->name('users.show');
    	//->middleware('permission:users.show');

    Route::delete('users/{user}', 'UserController@destroy')->name('users.destroy');
    	//->middleware('permission:users.destroy');

    Route::get('users/{user}/edit', 'UserController@edit')->name('users.edit');
    	//->middleware('permission:users.edit');	

//Pacientes
    Route::post('patients/store', 'PatientController@store')->name('patients.store');
    //	->middleware('permission:roles.create');
    
    Route::get('patients', 'PatientController@index')->name('patients.index');
    	//->middleware('permission:roles.index');
    
    Route::get('patients/create', 'PatientController@create')->name('patients.create');
    	//->middleware('permission:roles.create');

    Route::put('patients/{patient}', 'PatientController@update')->name('patients.update');
    	//->middleware('permission:roles.edit');

    Route::get('patients/{patient}', 'PatientController@show')->name('patients.show');
    	//->middleware('permission:roles.show');

    Route::delete('patients/{patient}', 'PatientController@destroy')->name('patients.destroy');
    	//->middleware('permission:roles.destroy');

    Route::get('patients/{patient}/edit', 'PatientController@edit')->name('patients.edit');
    	//->middleware('permission:roles.edit');


//Doctores
    Route::post('doctors/store', 'DoctorController@store')->name('doctors.store');
    //	->middleware('permission:roles.create');
    
    Route::get('doctors', 'DoctorController@index')->name('doctors.index');
    	//->middleware('permission:roles.index');
    
    Route::get('doctors/create', 'DoctorController@create')->name('doctors.create');
    	//->middleware('permission:roles.create');

    Route::put('doctors/{doctor}', 'DoctorController@update')->name('doctors.update');
    	//->middleware('permission:roles.edit');

    Route::get('doctors/{doctor}', 'DoctorController@show')->name('doctors.show');
    	//->middleware('permission:roles.show');

    Route::delete('doctors/{doctor}', 'DoctorController@destroy')->name('doctors.destroy');
    	//->middleware('permission:roles.destroy');

    Route::get('doctors/{doctor}/edit', 'DoctorController@edit')->name('doctors.edit');
    	//->middleware('permission:roles.edit');


//Especialidad
    Route::post('especialidads/store', 'EspecialidadController@store')->name('especialidads.store');
    //	->middleware('permission:roles.create');
    
    Route::get('especialidads', 'EspecialidadController@index')->name('especialidads.index');
    	//->middleware('permission:roles.index');
    
    Route::get('especialidads/create', 'EspecialidadController@create')->name('especialidads.create');
    	//->middleware('permission:roles.create');

    Route::put('especialidads/{especialidad}', 'EspecialidadController@update')->name('especialidads.update');
    	//->middleware('permission:roles.edit');

    Route::get('especialidads/{especialidad}', 'EspecialidadController@show')->name('especialidads.show');
    	//->middleware('permission:roles.show');

    Route::delete('especialidads/{especialidad}', 'EspecialidadController@destroy')->name('especialidads.destroy');
    	//->middleware('permission:roles.destroy');

    Route::get('especialidads/{especialidad}/edit', 'EspecialidadController@edit')->name('especialidads.edit');
    	//->middleware('permission:roles.edit');
});
