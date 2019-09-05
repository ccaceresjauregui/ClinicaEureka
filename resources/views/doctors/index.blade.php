@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Listado de Doctores
                   @can('doctors.create')
                        <a  href="{{ route('doctors.create') }}" 
                    class="btn btn-sm btn-primary pull-right">
                        + Crear
                        </a>
                    @endcan
                </div>

                <div class="panel-body">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th width="10px">ID</th>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>CMP</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($doctors as $doctor)
                            <tr>
                                <td>{{ $doctor->id }}</td>
                                <td>{{ $doctor->name }}</td>
                                <td>{{ $doctor->lastname }}</td>
                                <td>{{ $doctor->cmp }}</td>
                                @can('doctors.show')
                                <td width="10px">
                                    <a href="{{ route('doctors.show', $doctor->id) }}" 
                                    class="btn btn-sm btn-primary">
                                        Ver
                                    </a>
                                </td>
                                @endcan
                                @can('doctors.edit')
                                <td width="10px">
                                    <a href="{{ route('doctors.edit', $doctor->id) }}" 
                                    class="btn btn-sm btn-primary">
                                        Editar
                                    </a>
                                </td>
                                @endcan
                                @can('doctors.destroy')
                                <td width="10px">
                                    {!! Form::open(['route' => ['doctors.destroy', $doctor->id], 
                                    'method' => 'DELETE']) !!}
                                        <button class="btn btn-sm btn-danger">
                                            Eliminar
                                        </button>
                                    {!! Form::close() !!}
                                </td>
                                @endcan
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    {{ $doctors->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection