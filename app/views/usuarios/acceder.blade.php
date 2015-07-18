@section('modulo')
<div class="fAcceder">
<div class="row">
<div class="centered six columns" id="login">
<div class="encabezado">
	Acceda al sistema
</div>
<div class="contenido">
{{ Form::open(array('url'=>'validar')); }}

<ul>
<li class="field">
<div class="three columns">
<label class="label info ancho"> E-mail</label>
</div>
<div class="nine columns">
{{ Form::email('email', null , array('placeholder'=>'email',
	'class'=>'input xxwide',
	'maxlength'=>62,
	'required'=>'true'))
}}
</div>
</li>
<li class="field">
<div class="three columns">
<label class="label info ancho"> Contraseña</label>
</div>
<div class="nine columns">


{{ Form::password('password', array('placeholder'=>'contraseña',
	'maxlength'=>16,
	'class'=>'input xxwide',
	'required'=>'true'))
}}
</div>
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
</div>

@stop