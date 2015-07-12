@section('modulo')
<div class="row">
	<div class="push_two seven columns">
		<div class="encabezado margen">
		Proporcione los datos solicitados
		</div>
		{{Form::open( array('url'=>'comercial') )}}

		<div class="contenido margen">
		<ul>
			<li class="field">
			<label class="success label ancho"> Analisis de Precios</label>
				{{ Form::textarea('analisis', null , 
						array('placeholder'=>'Describe los precios de los diferentes productos y servicios de tu empresa.
Comenta si tendrás políticas de descuentos y listas de precios diferenciadas por tipo de cliente.
Realiza una comparación entre tus precios y los de tus competidores.',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
					}}	
			</li>
			<li class="field">
			<label class="success label ancho">Canales Comerciales</label>
				{{ Form::textarea('locales', null , 
						array('placeholder'=>'Describe las formas y lugares donde tus clientes podrán adquirir tus productos o contratar tus servicios.
La clave de esta sección es que pienses en la mejor forma de llegar a tus clientes para concretar la venta. 
',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
			<label class="success label ancho">Publicidad</label>
				{{ Form::textarea('publicidad', null ,array(
				'placeholder'=>'Describe las acciones de publicidad que realizarás para darte a conocer.',						
				'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
			<label class="success label ancho">Publicidad</label>
				{{ Form::textarea('promociones', null ,array(
				'placeholder'=>'Describe las promociones que realizarás para incentivar a los clientes a comprar los productos y servicios de tu empresa.',
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