@section('modulo')
<div class="fRegistrar">
<div class="row">
	<div class="centered six columns" id="registro">
	<div class="encabezado">
	Ingrese sus datos
	</div>
	<div class="contenido">
		{{ Form::open(array('url'=>'registrar')) }}
		<ul>
			<div class="row">
				<div class="three columns">
					<li class="info label ancho">Nombre</li>
				</div>
				<div class="nine columns">
					<li class="field">
					{{ Form::text('nombre', null , 
						array('placeholder'=>'Nombre',
						'class'=>'input xxwide',
						'required'=>'true'));
					}}			
					</li>	
				</div>
			</div>

			<div class="row">
				<div class="three columns">
					<li class="info label ancho">Apellido</li>
				</div>
				<div class="nine columns">
					<li class="field">
					{{ Form::text('apellido', null , 
						array('placeholder'=>'Apellidos',
						'class'=>'input xxwide',
						'required'=>'true'));
					}}			
					</li>	
				</div>
			</div>

			<div class="row">
				<div class="three columns">
					<li class="info label ancho">Email</li>
				</div>
				<div class="nine columns">
					<li class="field">
					{{ Form::email('email', null , 
						array('placeholder'=>'e-mail',
							'maxlength'=>62,
						'class'=>'input xxwide',
						'required'=>'true'));
					}}			
					</li>	
				</div>
			</div>

			<div class="row">
				<div class="three columns">
					<li class="info label ancho">Contraseña</li>
				</div>
				<div class="nine columns">
					<li class="field">
					{{ Form::password('clave', 
						array('placeholder'=>'Contraseña',
						'class'=>'input xxwide',
						'required'=>'true'));
					}}			
					</li>	
				</div>
			</div>

			<li >
				<div class="medium primary btn">
					{{ Form::submit('Registrar'); }}
				</div>
			</li>

		</ul>
		{{ Form::close(); }}


	</div>

</div>
</div>
@stop