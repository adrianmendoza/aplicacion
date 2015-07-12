@section('modulo')
<div class="row">
	<div class="push_two seven columns">
		<div class="encabezado margen">
		Proporcione los datos solicitados
		</div>
		{{Form::open( array('url'=>'operaciones') )}}

		<div class="contenido margen">
		<ul>
			<li class="field">
			<label class="success label ancho"> Proceso</label>
				{{ Form::textarea('proceso', null , 
						array('placeholder'=>'Comenta las distintas etapas del proceso de producción o de prestación del servicio. No es necesario que hagas una descripción en profundidad.',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
					}}	
			</li>
			<li class="field">
			<label class="success label ancho">Capacidad Productiva</label>
				{{ Form::textarea('capacidad', null , 
						array('placeholder'=>'Comenta sobre la capacidad máxima de producción o prestación de servicios que tienes con la infraestructura y personal iniciales.
¿Qué tán fácil es incrementar la capacidad de producción o de prestación de servicios?',
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