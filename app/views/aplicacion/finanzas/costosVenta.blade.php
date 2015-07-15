@section('modulo')
	
	<div class="row">
		<div class="row margen-top-10x">
		{{  Form::open( array('url'=>'costoVentas')) }}
			<div class="medium secondary btn right">
				{{  Form::submit('Aceptar') }}
			</div>
		</div>
	<?php 
	for ($i=1; $i <= Session::get('productos'); $i++) {
	 ?>
	<table class="rounded striped margen">
		
			
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
			<tr>
			<?php
						
			for ($o=0; $o <= Session::get('lapso'); $o++) { 

				if($o==0){
					?>
					<th>Unidades</th>
					<?php
				}else{
					?>
					<td class="centro"><?php
					$u = DB::table('tbl_cantidades')->select('unidadMes')->where('id_ingresos','=',Session::get('id_ingreso'))->where('producto','=',Session::get('producto'.$i))->where('mesCant','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$o.' months')))->first();
						?>
						 {{ $u->unidadMes}}
					
						  </td>
					<?php
				}
			}
			?>
			</tr>
			<?php
			
					for ($k=1; $k<=2 ; $k++) { 
					?>
					<tr> 
					<?php 
						for($j=0; $j <=Session::get('lapso') ; $j++) { 
						
						

						if($j==0){
							if($k==1){
								?>
								<td>Costo de Compra</td>
								<?php
								}
							if($k==2){
								?>
								<td>Comision Vendedores</td>
								<?php
							}
							if($k==3){
								?>
								<td>Total Costo Ventas</td>
								<?php
							}
							?>	
					<?php 
					}else{
						?><td>
						<li class="field ancho">
						<?php
						if($k==1) 
						{
							?>
						{{ Form::text('CC'.$j.'P'.$i.'', null ,array(
							'placeholder'=>'Unidades',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k == 2){
							?>
							{{ Form::text('CV'.$j.'P'.$i.'', null ,array(
							'placeholder'=>'Comision Mes',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
							<?php 

						}  
						 ?>
							</li>	
							</ul>
						</td>
						<?php  
						}
					}
					?>
					</tr>
					
					<?php 
				}

				?>
				<tr>
						
					</tr>
			
		</tbody>
		
		</table>
			
			
			
		
			<?php  	
			}	
			 ?>
<div class="two columns"></div>	

{{ Form::close() }} 	
	</div>
 

 <?php 


  ?>


@stop