@section('modulo')
	<div class="row margen" >
		<div class="push_two seven columns">
    		<p>Informacion de Usuario</p>
        {{  Form::open(array('url'=>'guardar'))  }}
    		<label class="info label">Nombres</label>
    		<div class="field">
    			{{Form::text('nombre', $nombre, array('class'=>'input wide'));}}
    		</div>
        <label class="info label">Apellidos</label>
        <div class="field">
          {{Form::text('apellido', $apellido, array('class'=>'input wide'));}}
        </div>
  		</div>
  		 <div class="three columns">
   			 <div class="medium secondary btn">
         {{  Form::submit('Guardar')  }}  
         </div>
 		 </div>

     {{  Form::close()  }}

	</div>


@stop