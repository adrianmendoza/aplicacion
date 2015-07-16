@section('modulo')
<div class="fNegocio">
<div class="row">
	<div class="push_two seven columns">
		<div class="encabezado margen">
		Proporcione los datos solicitados
		</div>
		{{Form::open( array('url'=>'nuevo') )}}

		<div class="contenido margen">
		<ul>
		<label class="primary label ancho">Nombre Negocio</label>
			<li class="field">
				{{ Form::text('negocio', null , 
						array('placeholder'=>'Nombre negocio',
						'class'=>'input xxwide',
						'required'=>'true'));
					}}	
			</li>
			<li class="field">
			<label class="primary label ancho">Historia Negocio</label>
				{{ Form::textarea('historia', null , 
						array('placeholder'=>'Historia',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
			<label class="primary label ancho">Socios</label>
				{{ Form::textarea('socios', null , 
						array('placeholder'=>'Socios',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
			<label class="primary label ancho">Productos / Servicios</label>
				{{ Form::textarea('prodServ', null , 
						array('placeholder'=>'Productos/Servicios',
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
</div>
@stop