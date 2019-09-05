@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Paciente</div>

                <div class="panel-body">                                        
                    <p><strong>Nombre</strong>     {{ $patient->name }}</p>
                    <p><strong>Apellido</strong>      {{ $patient->lastname }}</p>
                    <p><strong>Nro. Documento</strong>      {{ $patient->document_number }}</p>
                    <p><strong>Email</strong>      {{ $patient->email }}</p>
                    <p><strong>Otros</strong>      {{ $patient->others }}</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection