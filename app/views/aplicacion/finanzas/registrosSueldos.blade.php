@section('modulo')
	<div class="row">
		<div class="row margen-top-10x">
		{{  Form::open( array('url'=>'gastosFijos')) }}
			<div class="medium secondary btn right">
				{{  Form::submit('Aceptar') }}
			</div>
		</div>
	<?php 
	for ($i=1; $i <=1; $i++) {
	 ?>
	<table class="rounded striped margen">
			<thead>
			<?php 
			for ($r=0; $r <= Session::get('lapso'); $r++) { 
				if($r==0){
			?>
					<th>Socios</th>
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
					for ($k=1; $k<=1 ; $k++) { 
					?>
					<tr> 
					<?php 
						for($j=0; $j <=Session::get('lapso') ; $j++) {
							if($j==0){
							if($k==1){
								?>
								<td>Suma Sueldos Socios</td>
								<?php
								}
							
							?>	
					<?php 
					}else{
						?><td>
						<li class="field ancho">
						<?php
						if($k==1){
							?>
						{{ Form::text('S'.$j, null ,array(
							'placeholder'=>'Sueldos',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}
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
		</tbody>
		</table>	


		<table class="rounded striped margen">
			<thead>
			<?php 
			for ($r=0; $r <= Session::get('lapso'); $r++) { 
				if($r==0){
			?>
					<th>Empleados</th>
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
					for ($k=1; $k<=1 ; $k++) { 
					?>
					<tr> 
					<?php 
						for($j=0; $j <=Session::get('lapso') ; $j++) {
							if($j==0){
							if($k==1){
								?>
								<td> Suma Sueldos Empleados</td>
								<?php
								}
					}else{
						?><td>
						<li class="field ancho">
						<?php
						if($k==1){
							?>
						{{ Form::text('E'.$j, null ,array(
							'placeholder'=>'Sueldos',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						}}
						 <?php 
						}
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
				

				?>
		</tbody>
		</table>	

{{ Form::close() }} 	
	</div>
@stop