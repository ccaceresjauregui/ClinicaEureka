<?php

namespace App\Http\Controllers;

use App\Doctor;
use App\Especialidad;
use Illuminate\Http\Request;


class DoctorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function index()
    {
        //
        $doctors = Doctor::paginate();
        return view('doctors.index', compact('doctors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $doctors = Doctor::get();
        return view('doctors.create', compact('doctors'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $doctor = Doctor::create($request->all());
//        $doctor->especialidads()->sync($request->get('especialidads'));
        return redirect()->route('doctors.edit', $doctor->id)
            ->with('info', 'Doctor guardado con éxito');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $doctor = Doctor::find($id);
        return view('doctors.show', compact('doctor'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $doctor = Doctor::find($id);
        $especialidad = Especialidad::get();
        return view('doctors.edit', compact('doctor', 'especialidad'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $doctor = Doctor::find($id);
        $doctor->update($request->all());
      //  $doctor->especialidads()->sync($request->get('especialidads'));
        return redirect()->route('doctors.edit', $doctor->id)
            ->with('info', 'Doctor guardado con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $doctor = Doctor::find($id)->delete();
        return back()->with('info', 'Doctor eliminado correctamente');
    }}
