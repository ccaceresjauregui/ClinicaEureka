<div class="form-group">
	{{ Form::label('name', 'Nombre') }}
	{{ Form::text('name', null, ['class' => 'form-control', 'id' => 'name']) }}
</div>
<div class="form-group">
	{{ Form::label('lastname', 'Apellido') }}
	{{ Form::text('lastname', null, ['class' => 'form-control', 'id' => 'lastname']) }}
</div>
<div class="form-group">
	{{ Form::label('cmp', 'CMP') }}
	{{ Form::text('cmp', null, ['class' => 'form-control', 'id' => 'cmp']) }}
</div>
<hr>
<h3>Lista de especialidades</h3>
<div class="form-group">
	<ul class="list-unstyled">
		@foreach($especialidads as $especialidad)
	    <li>
	        <label>
	        {{ Form::checkbox('especialidads[]', $especialidad->id, null) }}
	        {{ $especialidad->name }}
	        <em>({{ $especialidad->description }})</em>
	        </label>
	    </li>
	    @endforeach
    </ul>
</div>
<div class="form-group">
	{{ Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) }}
</div>