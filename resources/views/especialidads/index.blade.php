@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Listado de Especialidad

                    @can('especialidads.create')
                    	<a  href="{{ route('especialidads.create') }}" 
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
                                <th>Descripcion</th>
                                <th colspan="3">&nbsp;</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($especialidads as $especialidad)
                            <tr>
                                <td>{{ $especialidad->id }}</td>
                                <td>{{ $especialidad->name }}</td>
                                <td>{{ $especialidad->description }}</td>
                                @can('especialidads.show')
                                <td width="10px">
                                    <a href="{{ route('especialidads.show', $especialidad->id) }}" 
                                    class="btn btn-sm btn-primary">
                                        Ver
                                    </a>
                                </td>
                                @endcan
                                @can('especialidads.edit')
                                <td width="10px">
                                    <a href="{{ route('especialidads.edit', $especialidad->id) }}" 
                                    class="btn btn-sm btn-primary">
                                        Editar
                                    </a>
                                </td>
                                @endcan
                                @can('especialidads.destroy')
                                <td width="10px">
                                    {!! Form::open(['route' => ['especialidads.destroy', $especialidad->id], 
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
                    {{ $especialidads->render() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection