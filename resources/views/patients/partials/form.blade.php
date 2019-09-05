<div class="form-group">
	{{ Form::label('name', 'Nombre') }}
	{{ Form::text('name', null, ['class' => 'form-control', 'id' => 'name']) }}
</div>
<div class="form-group">
	{{ Form::label('lastname', 'Apellido') }}
	{{ Form::text('lastname', null, ['class' => 'form-control', 'id' => 'lastname']) }}
</div>
<div class="form-group">
	{{ Form::label('document_number', 'Nro. de Documento') }}
	{{ Form::text('document_number', null, ['class' => 'form-control', 'id' => 'document_number']) }}
</div>
<div class="form-group">
	{{ Form::label('email', 'Email') }}
	{{ Form::text('email', null, ['class' => 'form-control', 'id' => 'email']) }}
</div>
<div class="form-group">
	{{ Form::label('others', 'Otros') }}
	{{ Form::text('others', null, ['class' => 'form-control', 'id' => 'others']) }}
</div>

<hr>
<div class="form-group">
	{{ Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) }}
</div>