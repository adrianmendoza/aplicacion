@section('modulo')
<div class="modal active" id="modal1">
	<div class="content">
		<div class="row">
			<div class="ten columns centered text-center">
				
			@if(!Session::has('productos'))
					{{ Form::open(array('url'=>'productos'))   }}
				<h2>Bienvenido a nuestro tormento</h2>
				<p> Esta ventana permite saber con cuantos productos va a trabajar</p>
				<p>Seleccione una cantidad y haga clic en Aceptar</p>
				<div class="picker margen">
					{{Form::selectRange('numero', 1,3)}}
				</div>
				<p class="btn primary medium">
					{{  Form::submit('Aceptar') }}

				</p>
				{{ Form::close() }}
			@else
				{{ Form::open(array('url'=>'registroProductos'))   }}
				<h2>Bienvenido a nuestro tormento</h2>
				<p> Esta ventana permite saber co cuantos productos va a trabajar</p>
				<p>Seleccione una cantidad y haga clic en Aceptar</p>
				@for($i = 1; $i <= Session::get('productos'); $i = $i+1)
					<li class="field">
						{{  Form::text('Producto'.$i, null, array(
						'class'=>'input text narrow',
						'placeholder'=>'Producto '.$i
						)) }}
					</li>
				@endfor
				<p class="btn primary medium">
					{{Form::submit('Aceptar') }}
				</p>

			@endif
			</div>
		</div>
	</div>
</div>
@stop
