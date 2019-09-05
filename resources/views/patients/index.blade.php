@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Listado de Pacientes
                   @can('patients.create')
                        <a  href="{{ route('patients.create') }}" 
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
                                <th>Apellido</th>
                                <th>Nro. Documento</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($patients as $patient)
                            <tr>
                                <td>{{ $patient->id }}</td>
                                <td>{{ $patient->name }}</td>
                                <td>{{ $patient->lastname }}</td>
                                <td>{{ $patient->document_number }}</td>
                                @can('patients.show')
                                <td width="10px">
                                    <a href="{{ route('patients.show', $patient->id) }}" 
                                    class="btn btn-sm btn-primary">
                                        Ver
                                    </a>
                                </td>
                                @endcan
                                @can('patients.edit')
                                <td width="10px">
                                    <a href="{{ route('patients.edit', $patient->id) }}" 
                                    class="btn btn-sm btn-primary">
                                        Editar
                                    </a>
                                </td>
                                @endcan
                                @can('patients.destroy')
                                <td width="10px">
                                    {!! Form::open(['route' => ['patients.destroy', $patient->id], 
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
                    {{ $patients->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection