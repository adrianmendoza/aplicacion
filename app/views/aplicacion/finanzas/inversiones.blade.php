@section('modulo')
	<div class="row">
		<div class="row margen-top-10x">
		<div class="ten columns success alert">
		<h4 class="centro">Informacion</h4>
			<p>Aqui proporcionara informacion acerca de los gastos considerados inversion </p>
			<p>Maquinaria y equipo --> -Empacadora/Selladora, Congelador, etc </p>
			<p>Muebles y enseres --> -Tocador de madera con espejo, Mesita de madera, etc </p>
			<p>Equipo de oficina --> -Archivador, Fotocopiadora</p>
			<p>Vehiculos --> Motocicleta, Automovil</p>
			<p>Equipo de computo --> Computador</p>
		</div>
		<div class="two columns">
		{{  Form::open( array('url'=>'inversiones')) }}
			<div class="medium secondary btn right">
				{{  Form::submit('Aceptar') }}
			</div>
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
					for ($k=1; $k<=5 ; $k++) { 
					?>
					<tr> 
					<?php 
						for($j=0; $j <=Session::get('lapso') ; $j++) {
							if($j==0){
							if($k==1){
								?>
								<td>Maquinaria y equipo</td>
								<?php
							}if($k==2){
								?>
								<td>Muebles y Enseres</td>
								<?php
							}if($k==3){
								?>
								<td>Equipo de oficina</td>
								<?php
							}if($k==4){
								?>
								<td>Vehiculo</td>
								<?php
							}if($k==5){
								?>
								<td>Equipo de computo</td>
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
						{{ Form::text('MQ'.$j, null ,array(
							'placeholder'=>'Maquinaria',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==2){
							?>
						{{ Form::text('ME'.$j, null ,array(
							'placeholder'=>'Muebles',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==3){
							?>
						{{ Form::text('EO'.$j, null ,array(
							'placeholder'=>'E Oficina',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==4){
							?>
						{{ Form::text('V'.$j, null ,array(
							'placeholder'=>'Vehiculo',
							'class'=>'input text xxwide numeric',
							'required'=>'true'
							)) 
						 }}
						 <?php 
						}if($k==5){
							?>
						{{ Form::text('EC'.$j, null ,array(
							'placeholder'=>'E Computo',
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
{{ Form::close() }} 	
	</div>
@stop