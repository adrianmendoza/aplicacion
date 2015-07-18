@section('modulo')
<<<<<<< HEAD
	<div class="row margen">
		<div class="push_two seven columns">
    		<p>Informacion de Usuario</p>
           		<div class="field">
    </div>
=======
	<div class="row margen" >
		<div class="push_two seven columns">
    		<p>Informacion de Usuario</p>
           		<div class="field">
    	  		</div>
>>>>>>> 2ffe0cc2ee32f0f2204ccf023c5e2684a559562d
        	<div class="field">
        	</div>
  		</div>
  		<div class="three columns">
<<<<<<< HEAD
      @if(Session::get('rol')=="Usuario")
   			 <div class="medium secondary btn">
         
         		<a href={{ url('/nuevo') }}>Nuevo</a>
       
 	        </div>
           @else
        @endif
 		 </div>
	</div>
  </div>

  <div class="row">

    <div class="ten columns">
    <table>
    <thead>
    <th>Nombre</th>
    <th>Fecha de creacion</th>
      
    </thead>
    <tbody>
    <?php 
    if(Session::get('rol' == 'Usuario')){
    $us = DB::table('tbl_negocio')->select('nombreNeg','fecha_creacion')->where('id_usuario',Session::get('id_usuario'))->orderBy('fecha_creacion','desc')->get();
    }else{
      $us = DB::table('tbl_negocio')->select('nombreNeg','fecha_creacion')->orderBy('fecha_creacion','desc')->take(10)->get();
    }
      for ($i=0; $i < count($us); $i++) { 
        ?><tr>
        <td>
        <?php 

          echo $us[$i]->nombreNeg;
          ?></td><td><?php 
          echo $us[$i]->fecha_creacion;
?></td>
 </tr><?php 
         
      }
     
 ?>
 </tbody>
 </table>
    </div>

  </div>
=======
   			 <div class="medium secondary btn">
         		<a href={{ url('/nuevo') }}>Nuevo</a>
 	        </div>
 		 </div>
	</div>
>>>>>>> 2ffe0cc2ee32f0f2204ccf023c5e2684a559562d


@stop