@section('modulo')
<div class="row">
<div class="centered six columns" id="login">
<div class="encabezado">
	Acceda al sistema
</div>
<div class="contenido">
{{ Form::open(array('url'=>'validar')); }}

<ul>
<li class="field">
{{ Form::email('email', null , array('placeholder'=>'email',
	'class'=>'input xxwide',
	'maxlength'=>62,
	'required'=>'true'))
}}
</li>
<li class="field">
{{ Form::password('password', array('placeholder'=>'contraseña',
	'maxlength'=>16,
	'class'=>'input xxwide',
	'required'=>'true'))
}}
</li>

<li>
<div class="medium primary btn">
{{ Form::submit('Ingresar')}}
 </div>
</li>
</ul>

{{ Form::close(); }}	
</div>

</div>

@stop