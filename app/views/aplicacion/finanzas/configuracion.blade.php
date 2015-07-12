@section('modulo')
<div id="fondoIngreso">
	<div class="row margen">
		<div class="encabezado">
			Proporcione los ajustes siguientes
		</div>
		{{  Form::open(array('url'=>'ajustes')) }}
		<div class="contenido centro twelve columns">
		<ul>
		<li class="field">
			<label class="label success"> Fecha de Inicio </label>

			{{ Form::selectMonth('mesI')  }}
			{{ Form::selectRange('añoI', date("Y"), date("Y")+3)  }}
		</li>
		<li class="field">
		<label class="label success"> Fecha de Fin </label>

			{{ Form::selectMonth('mesF')  }}
			{{ Form::selectRange('añoF', date("Y"), date("Y")+3 )}}
		</li>
		</ul>
			<p>Estan fechas deben tener una diferencia de 6 meses a 1 año</p>
		
		</div>
		<div class="right margen-right">
		<div class="medium primary btn">
		
			{{  Form::submit('Aceptar')  }}
		</div>
		</div>

		{{ Form::close()  }}
	</div>



</div>


@stop