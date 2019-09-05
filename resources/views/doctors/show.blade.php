@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Doctor</div>

                <div class="panel-body">                                        
                    <p><strong>Nombre</strong>     {{ $doctor->name }}</p>
                    <p><strong>Apellido</strong>      {{ $doctor->lastaname }}</p>
                    <p><strong>CMP</strong>      {{ $doctor->cmp }}</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection