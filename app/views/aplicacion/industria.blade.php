@section('modulo')
<div class="row">
	<div class="twelve columns">
		<div class="encabezado margen">
		Proporcione los datos solicitados
		</div>
		{{Form::open(array('url'=>'industria') )}}

		<div class="contenido margen">
			<div class="four columns">
			<label class="warning label ancho">Mercado</label>
				<br>
				{{ Form::textarea('mercado',null , 
						array('placeholder'=>'Mercado',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x20'));
				}}	
					<br>
				<label class="warning label ancho margen">Tamaño</label>
				<br>
				{{ Form::textarea('tamaño', null , 
						array('placeholder'=>'Tamaño',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}
					<br>
				<label class="warning label ancho margen">Evolución</label>
				<br>
				{{ Form::textarea('evolucion', null , 
						array('placeholder'=>'Evolucion',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}	
			</div>
			<div class="four columns">
			<label class="label info ancho">Competencia</label>
				<br>
				{{ Form::textarea('competencia', null , 
						array('placeholder'=>'Competencia',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}	
					<br>
				<label class="label info ancho margen">Nueva Competencia</label>
				<br>
				{{ Form::textarea('n_Competencia', null , 
						array('placeholder'=>'Nueva Competencia',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}
					<br>
				<label class="label info ancho margen">Ventajas</label>
				<br>
				{{ Form::textarea('Ventajas', null , 
						array('placeholder'=>'Ventajas',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}	
			</div>
			<div class="four columns">
				<label class="label primary ancho">Proveedores</label>
				<br>
				{{ Form::textarea('Proveedores', null , 
						array('placeholder'=>'Proveedores',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}	
					<br>
				<label class="label primary ancho margen">Distribuidores</label>
				<br>
				{{ Form::textarea('Distribuidores', null , 
						array('placeholder'=>'Distribuidores',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}
					<br>
				<label class="label primary ancho margen">Alianzas</label>
				<br>
				{{ Form::textarea('Alianzas', null , 
						array('placeholder'=>'Alianzas',
						'class'=>'textarea input ancho',
						'required'=>'true',
						'size'=>'47x3'));
				}}	
			</div>

		</div>
	</div>	
	<div class="twelve columns margen">
		<div class="medium secondary btn right">
   		 {{  Form::submit('Siguiente')  }} 
    	</div>
  </div>
</div>

@stop