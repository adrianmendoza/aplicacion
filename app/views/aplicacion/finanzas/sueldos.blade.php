@section('modulo')
<div class="modal active" id="modal1">
	<div class="content">
		<div class="row">
			<div class="ten columns centered text-center">
				
					{{ Form::open(array('url'=>'sueldos'))   }}
				<h2>Sección sueldos</h2>
				<p> Esta ventana permite saber con cuantos personas va a trabajar</p>
				<p>Seleccione una cantidad y haga clic en Aceptar</p>
				<p>Seleccione el numero de socios</p>
				<div class="picker margen-top-10x">
					{{Form::selectRange('numsocios', 1, 5)}}
				</div>
				<p>Seleccione el numero de empleados</p>
				<div class="picker margen-top-10x">
					{{Form::selectRange('numempleados', 1, 25)}}
				</div><br>
				<p class="btn secondary medium right">
					{{  Form::submit('Aceptar') }}
				</p>
			</div>
		</div>
	</div>
</div>
@stop