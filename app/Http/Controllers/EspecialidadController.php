<?php

namespace App\Http\Controllers;

use App\Especialidad;
use Illuminate\Http\Request;

class EspecialidadController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $especialidads = Especialidad::paginate();
        return view('especialidads.index', compact('especialidads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $especialidad = Especialidad::get();
        return view('especialidads.create', compact('especialidad'));
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
        $especialidad = Especialidad::create($request->all());
        return redirect()->route('especialidads.edit', $especialidad->id)
            ->with('info', 'Especialidad guardado con éxito');
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
        $especialidad = Especialidad::find($id);
        return view('especialidads.show', compact('especialidad'));
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
        $especialidad = Especialidad::find($id);
        return view('especialidads.edit', compact('especialidad'));
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
        $especialidad = Especialidad::find($id);
        $especialidad->update($request->all());
        return redirect()->route('especialidads.edit', $especialidad->id)
            ->with('info', 'Especialidad guardado con éxito');
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
        $especialidad = Especialidad::find($id)->delete();
        return back()->with('info', 'Especialidad eliminado correctamente');
    }
}
