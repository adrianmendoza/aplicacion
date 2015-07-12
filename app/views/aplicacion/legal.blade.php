@section('modulo')
<div class="row">
	<div class="push_two seven columns">
		<div class="encabezado margen">
		Proporcione los datos solicitados
		</div>
		{{  Form::open(array('url'=>'legal'))   }}

		<div class="contenido margen">
		<ul>
			<li class="field">
			<label class="success label ancho"> Tipo Empresa</label>
				{{ Form::textarea('tipoEmpresa', null , 
						array('placeholder'=>'¿Quiénes son las personas clave en el negocio? ¿Qué experiencias tienen para aportar al negocio?',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
					}}	
			</li>
			<li class="field">
			<label class="success label ancho">Propiedad Intelectual</label>
				{{ Form::textarea('pIntelectual', null , 
						array('placeholder'=>'¿La empresa necesita completar el equipo de personas clave? ¿Qué perfil de personas se necesita?',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
			<label class="success label ancho">Marcas</label>
				{{ Form::textarea('marcas', null , 
						array('placeholder'=>'Describe los distintos departamentos en los que se organizará la empresa.',
						'class'=>'input textarea',
						'required'=>'true',
						'size'=>'30x5'));
				}}	
			</li>
			<li class="field">
			<label class="success label ancho">Contratos</label>
				{{ Form::textarea('contratos', null , 
						array('placeholder'=>'Describe los distintos departamentos en los que se organizará la empresa.',
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