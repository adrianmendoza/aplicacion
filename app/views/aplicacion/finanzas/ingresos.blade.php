@section('modulo')
	<div class="row">
	<?php 
	for ($i=1; $i <= Session::get('productos'); $i++) {
	 ?>
	<table class="rounded striped margen">
		{{ Session::put('fecha_inicio','2015-07-01') }}
		{{ Session::put('lapso',12)}}
			{{  Form::open() }}
			<thead>
			<?php 
			for ($r=0; $r <= Session::get('lapso'); $r++) { 
				if($r==0){
			?>
					<th>{{Session::get('producto'.$i)   }}</th>
			<?php 
				}else{	
			 ?>
					<th class="centro"><?php echo  date('Y-m', strtotime(Session::get('fecha_inicio').'+ '.$r.' months')); ?></th>
			<?php
				} 		
			}
			?>	
			</thead>
			<tbody>
			<?php 
			 
				for ($k=0; $k <2 ; $k++) { 
					?>
					<tr> 
					<?php 
						for ($j=0; $j <=Session::get('lapso') ; $j++) { 
						if($k==0){
						if($j==0){
					?>
						<td>Unidades</td>
					<?php 
					}else{
						?><td>
						<li class="field ancho">
						{{$i}}
						{{ Form::text('U'.$j.'P'.$i.'', null ,array(
							'placeholder'=>'Unidades',
							'class'=>'input text xxwide',
							'required'=>'true'
							)) 
						 }}
							</li>	
							</ul>
						</td>
						<?php  
						}
					}else{
						if($j==0){
					?>
						<td>Precio</td>
					<?php 
					}else{
						?><td>
						 
						<li class="field ancho">
						{{ Form::text('U'.$j.'P', null ,array(
							'placeholder'=>'Precio',
							'class'=>'input text xxwide',
							'required'=>'true'
							)) 
						 }}
							</li>	
							</ul>
						</td>
						<?php
					}
					}
					}
					?>
					</tr><?php 
				}
				?>
				
				
		</tbody>
		</table>
			
			{{ Form::close() }}
			<div class="two columns"></div>
		
<?php  	
			}	
			 ?>



	</div>
 
	{{    HTML::script('js/agregar.js')    }}
 


@stop