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
					<th>Gastos Local</th>
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
					for ($k=1; $k<=6 ; $k++) { 
					?>
					<tr> 
					<?php 
						for($j=0; $j <=Session::get('lapso') ; $j++) {
							if($j==0){
							if($k==1){
								?>
								<td>Alquiler</td>
								<?php
								}
							if($k==2){
								?>
								<td>Limpieza</td>
								<?php
							}
							if($k==3){
								?>
								<td>Gas</td>
								<?php
							}if($k==4){
								?>
								<td>Agua</td>
								<?php
							}
							if($k==5){
								?>
								<td>Energia</td>
								<?php
							}
							if($k==6){
								?>
								<td>Telefono/Internet</td>
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
						{{ Form::text('A'.$j, null ,array(
							'placeholder'=>'Alquiler',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==2){
							?>
							{{ Form::text('L'.$j, null ,array(
							'placeholder'=>'Limpieza',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) }}
							<?php
						}if($k==3){
							?>
						{{ Form::text('G'.$j, null ,array(
							'placeholder'=>'Gas',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==4){
							?>
						{{ Form::text('AG'.$j, null ,array(
							'placeholder'=>'Agua',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==5){
							?>
						{{ Form::text('E'.$j, null ,array(
							'placeholder'=>'Electricidad',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==6){
							?>
						{{ Form::text('T'.$j, null ,array(
							'placeholder'=>'Telefono',
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
					<th>Gastos Comerciales</th>
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
					for ($o=1; $o <=2; $o++) { 
					?>
					<tr>
					<?php 
						for ($col=0; $col <= Session::get('lapso'); $col++) { 
							if($col==0){
								if($o==1){
								?>
								<td>Carteles/Folletos</td>
								<?php 
								}if($o==2){
								?>
								<td>Publicidad Internet</td>
								<?php 
								}
							}else{
								if($o==1){
								?>
								<td>
								<li class="field">
								{{ Form::text('CF'.$col, null ,array(
								'placeholder'=>'Carteles',
								'class'=>'input text xxwide numeric',
								'required'=>'true'
								)) }}
								</li>
								</td>
								<?php 
								}if($o==2){
								?>
								<td>
								<li class="field">
								{{ Form::text('PI'.$col, null ,array(
								'placeholder'=>'Publicidad',
								'class'=>'input text xxwide numeric',
								'required'=>'true'
								)) }}
								</li>
								</td>
								
								<?php 
								}
							}
						} ?>
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
					<th>Gastos Administrativos</th>
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
					for ($o=1; $o <=3; $o++) { 
					?>
					<tr>
					<?php 
						for ($col=0; $col <= Session::get('lapso'); $col++) { 
							if($col==0){
								if($o==1){
								?>
								<td>Abogados</td>
								<?php 
								}if($o==2){
								?>
								<td>Contadores</td>
								<?php 
								}if($o==3){
								?>
								<td>Libreria</td>
								<?php 
								}
							}else{
								if($o==1){
								?>
								<td>
								<li class="field">
								{{ Form::text('AB'.$col, null ,array(
								'placeholder'=>'Abogados',
								'class'=>'input text xxwide numeric',
								'required'=>'true'
								)) }}
								</li>
								</td>
								<?php 
								}if($o==2){
								?>
								<td>
								<li class="field">
								{{ Form::text('CO'.$col, null ,array(
								'placeholder'=>'Contadores',
								'class'=>'input text xxwide numeric',
								'required'=>'true'
								)) }}
								</li>
								</td>
								
								<?php 
								}if($o==3){
								?>
								<td>
								<li class="field">
								{{ Form::text('LI'.$col, null ,array(
								'placeholder'=>'Libreria',
								'class'=>'input text xxwide numeric',
								'required'=>'true'
								)) }}
								</li>
								</td>
								
								<?php 
								}
							}
						} ?>
						</tr>
						<?php 
					}
				 ?>

			</tbody>
		
		</table>

		

			
{{ Form::close() }} 	
	</div>
@stop