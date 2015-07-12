@section('modulo')
<div class="row">
	<div class="push_two seven columns">
		<div class="encabezado margen">
		Proporcione los datos solicitados
		</div>
		{{Form::open( array('url'=>'nuevo') )}}

		<div class="contenido margen">
		<ul>
			<li class="field">
				{{ Form::text('negocio', null , 
						array('placeholder'=>'Nombre negocio',
						'class'=>'input xxwide',
						'required'=>'true'));
					}}	
			</li>
			<li class="field">
				{{ Form::textarea('historia', null , 
						array('placeholder'=>'Historia',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
				{{ Form::textarea('socios', null , 
						array('placeholder'=>'Socios',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
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


@stop