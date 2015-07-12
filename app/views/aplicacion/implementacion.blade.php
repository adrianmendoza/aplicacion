@section('modulo')

<div class="row">
Implementacion
	<div class="push_two seven columns">
		<div class="encabezado margen">
		Proporcione los datos solicitados
		</div>
		{{  Form::open(array('url'=>'implementacion'))   }}

		<div class="contenido margen">
		<ul>
			<li class="field">
			<label class="success label ancho"> Implementación</label>
				{{ Form::textarea('implementacion', null , 
						array('placeholder'=>'¿Quiénes son las personas clave en el negocio? ¿Qué experiencias tienen para aportar al negocio?',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
					}}	
			</li>
		</ul>
		</div>
	</div>	
	<div class="three columns margen">
	<div class="medium secondary btn">
    {{  Form::submit('Siguiente')  }} 
    </div>
  </div>
</div>


@stop