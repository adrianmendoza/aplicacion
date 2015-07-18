@section('modulo')
<div id="fondoIngreso">
	<div class="row margen">
		<div class="encabezado">
			Proporcione los ajustes siguientes
		</div>
		{{  Form::open(array('url'=>'ajustes')) }}
		<div class="centered twelve columns">
			<ul>
				<li class="field centro">
					<div class="centered ten columns">
						<div class="push_one two columns">
							<label class="label success ancho margen-top-15x"> Fecha de Inicio </label>
						</div>
						<div class="push_one two columns">
							<div class="picker margen-top-10x">
							{{
							Form::select('mesI', array(
							'1' => 'Enero',
							'2' => 'Febrero',
							'3' => 'Marzo',
							'4' => 'Abril',
							'5' => 'Mayo',
							'6' => 'Junio',
							'7' => 'Julio',
							'8' => 'Agosto',
							'9' => 'Septiembre',
							'10' => 'Octubre',
							'11' => 'Noviembre',
							'12' => 'Diciembre'
							))
							}}
							</div>
						</div>
						<div class="push_one two columns">
							<div class="picker margen-top-10x">
								{{ Form::selectRange('añoI', date("Y"), date("Y")+3)  }}
							</div>
						</div>
					</div>
				</li>

				<li class="field centro">
					<div class="centered ten columns">
						<div class="push_one two columns">
							<label class="label success ancho margen-top-15x"> Tiempo de proyeccion </label>
						</div>
						<div class="push_one two columns">
							<div class="picker margen-top-10x">
							{{
							Form::selectRange('lapso', 6, 12);
							}}
							</div>
						</div>
						<div class="push_one two columns">
							<div class="picker margen-top-10x">
								
							</div>
						</div>
					</div>
				</li>

		
		</ul>
		</div>
		<div class="ten columns">
		<div class="right">
		<div class="medium primary btn">
		
			{{  Form::submit('Aceptar')  }}
		</div>
		</div>
		</div>

		{{ Form::close()  }}
	</div>



</div>


@stop