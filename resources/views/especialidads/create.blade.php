@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Especialidad</div>

                <div class="panel-body">                    
                    {{ Form::open(['route' => 'especialidads.store']) }}

                        @include('especialidads.partials.form')
                        
                    {{ Form::close() }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection