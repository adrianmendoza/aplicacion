
@section('modulo')
<div class="fNegocio">
	{{Form::open(array('url'=>'industria') )}}
<div class="row">
<div class="ten columns margen-top-10x">
		<div class="alert yellow">
			<p><h3 class="black">Industria</h3></p>	
			<p>En esta seccion se necesita la informacion acerca del ambito de desarrollo de la empresa</p>
		</div>
  </div>
  <div class="two columns margen-top-10x">
  	<div class="medium secondary btn">

   		 {{  Form::submit('Siguiente')  }} 
    	</div>
  </div>
	<div class="eleven columns">
		<!-- <div class="encabezado margen">
		Proporcione los datos solicitados
		</div> -->
		

		<div class="contenido">
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
	
</div>
 {{ Form::close()}}
</div>

@stop