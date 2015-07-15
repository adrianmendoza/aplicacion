@section('modulo')
	<div class="row">
		<div class="row margen-top-10x">
			<div class="ten columns warning alert">
			<h4> Informacion</h4>
			<p>Diganos cuanto aportaron los socios al inicio del proceso de creacion de la empresa, si obtuvo algun prestamo a corto o largo plazo, </p>
			</div>
			<div class="two columns">
			{{  Form::open( array('url'=>'financiamiento')) }}
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
					<th>Aportes/Retiros Dueños </th>
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
					for ($k=1; $k<=2; $k++) { 
					?>
					<tr> 
					<?php 
						for($j=0; $j <=Session::get('lapso') ; $j++) {
							if($j==0){
							if($k==1){
								?>
								<td>Aporte</td>
								<?php
								}
							if($k==2){
								?>
								<td>Retiro</td>
								<?php
							}
					}else{
						?><td>
						<li class="field prepend">
						<span class="adjoined">$</span>
						<?php
						if($k==1){
							?>
						{{ Form::text('A'.$j, '0.0' ,array(
							'placeholder'=>'Aporte',
							'class'=>'input text xwide numeric',
							'required'=>'true',
							'onChange'=>'validarSiNumero(this.value);'
							)) 
						 }}
						 <?php 
						}if($k==2){
							?>
							{{ Form::text('R'.$j, '0.0' ,array(
							'placeholder'=>'Retiro',
							'class'=>'input text xwide numeric',
							'required'=>'true',
							'onChange'=>'validarSiNumero(this.value);'
							)) }}
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
					<th>Deuda Corto Plazo</th>
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
								<td>Prestamo</td>
								<?php 
								}if($o==2){
								?>
								<td>Devolucion</td>
								<?php 
								}if($o==3){
								?>
								<td>Pago de interes</td>
								<?php 
								}
							}else{
								?>
								<td>
									<li class="prepend field">
									<span class="adjoined">$</span>
								 <?php 
								if($o==1){
								?>
								{{ Form::text('PCP'.$col, '0.0' ,array(
								'placeholder'=>'Prestamo',
								'class'=>'input text xwide numeric',
								'required'=>'true',
								'onChange'=>'validarSiNumero(this.value);'
								)) }}
								
								<?php 
								}if($o==2){
								?>
								
								{{ Form::text('DCP'.$col, '0.0' ,array(
								'placeholder'=>'Devuelto',
								'class'=>'input text xwide numeric',
								'required'=>'true',
								'onChange'=>'validarSiNumero(this.value);'
								)) }}
								
								
								<?php 
								}if($o==3){
								?>
								
								
								{{ Form::text('PICP'.$col, '0.0' ,array(
								'placeholder'=>' $ Interes',
								'class'=>'input text xwide numeric',
								'required'=>'true',
								'onChange'=>'validarSiNumero(this.value);'
								)) }}
							
								
								
								<?php 
								}
								?>
								</li>
								</td>
								<?php 
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
					<th>Deuda Largo Plazo</th>
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
								<td>Prestamo</td>
								<?php 
								}if($o==2){
								?>
								<td>Devolucion Prestamo</td>
								<?php 
								}if($o==3){
								?>
								<td>Pago de Intereses</td>
								<?php 
								}
							}else{
								?> 
								<td>
								<li class=" prepend field">
								<span class="adjoined">$</span>
								<?php
								if($o==1){
								?>
								
								{{ Form::text('PLP'.$col, '0.0' ,array(
								'placeholder'=>'Abogados',
								'class'=>'input text xwide numeric',
								'required'=>'true',
								'onChange'=>'validarSiNumero(this.value);'
								)) }}
								
								<?php 
								}if($o==2){
								?>
								
								{{ Form::text('DLP'.$col, '0.0' ,array(
								'placeholder'=>'Contadores',
								'class'=>'input text xwide numeric',
								'required'=>'true',
								'onChange'=>'validarSiNumero(this.value);'
								)) }}
							
								
								<?php 
								}if($o==3){
								?>
								
								{{ Form::text('PILP'.$col, '0.0' ,array(
								'placeholder'=>'Libreria',
								'class'=>'input text xwide numeric',
								'required'=>'true',
								'onChange'=>'validarSiNumero(this.value);'
								)) }}
								
								
								<?php 
								}
								?></li>
								</td><?php 
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
					<th>Deuda Corto Plazo</th>
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
					for ($o=1; $o <=1; $o++) { 
					?>
					<tr>
					<?php 
						for ($col=0; $col <= Session::get('lapso'); $col++) { 
							if($col==0){
								if($o==1){
								?>
								<td>Subsidios/Donaciones</td>
								<?php 
								}
							}else{
								?>
								<td>
								<li class="prepend field">
								<span class="adjoined">$</span>
								<?php 
								if($o==1){
								?>
								
								{{ Form::text('SD'.$col, '0.0' ,array(
								'placeholder'=>'Donaciones',
								'class'=>'input text xwide numeric',
								'required'=>'true',
								'onChange'=>'validarSiNumero(this.value, this.name);'
								)) }}
								
								<?php 
								}?>
								</li>
								</td>
								<?php 
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



<link rel="stylesheet" href="css/sweetalert.css">
<script type="text/javascript" src="js/sweetalert.min.js"></script>
	<?php
    echo "<script>

      function validarSiNumero(numero, nombre){

        if (!/^[0-9]+(\.[0-9]{1,2})?$/.test(numero)){
          swal('Error!', 'No es un numero valido\\nSolo digitos \\nPara especificar decimale use ( . )');
         
		}else{
			
		}
      }

    </script>";
?>
@stop