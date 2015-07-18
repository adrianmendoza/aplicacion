@section('modulo')
<div class="row">
{{Form::open(array('url'=>'impuestos'))}}
<div class="twelve columns margen-top-15x">
	<div class="nine columns">
	<div class="alert primary">
		<p>Esta pagina calculo el impuesto a la renta al cual usted debera pagar</p>
	</div>
	
	</div>
	<div class="three columns margen-top-10x">
		<div class="secondary btn large right">
			{{Form::submit('Finalizar')}}
		</div>
	</div>




</div>

<div class="twelve columns">	
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
					for ($k=1; $k<=4; $k++) { 
					?>
					<tr> 
					<?php 
						for($j=0; $j <=Session::get('lapso') ; $j++) {
						if($j==0){
							if($k==1){
								?>
								<td>Saldo antes Impuesto</td>
								<?php
								}
							if($k==2){
								?>
								<td>Tasa Impuesto %</td>
								<?php
							}if($k==3){
								?>
								<td>Valor Pagar</td>
								<?php
							}if($k==4){
								?>
								<td>Saldo A favor</td>
								<?php
							}
					}else{
						?><td>
						<li class="field">
						
						<?php
						if($k==1){
						$sumaIngresos =0;
			$sumaCV = 0;
			for ($i=1; $i <= Session::get('productos'); $i++) {
				$in = DB::table('tbl_cantidades')->select('total')->where('id_ingresos','=',Session::get('id_ingreso'))->where('producto','=',Session::get('producto'.$i))->where('mesCant','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				$sumaIngresos+=$in->total;
				$cv = DB::table('tbl_costoVentas')->select('total')->where('id_negocio','=',Session::get('id_negocio'))->where('producto','=',Session::get('producto'.$i))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				 $cv->total;	
				$sumaCV+=$cv->total;
				}
				$gf = DB::table('tbl_gastosFijos')->select('total')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				$sumaGF= $gf->total;

				$s = DB::table('tbl_sueldos')->select('totalSueldos')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				$sumaS= $s->totalSueldos;
				$depreciacion = 0;
				$invMaquinaria = DB::table('tbl_inversiones')->select('maqEquipo')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				 $depreciacion+= (($invMaquinaria->maqEquipo) * (1-0.15) /5)/12;
				
				$invMuebles = DB::table('tbl_inversiones')->select('MueEnseres')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				$depreciacion+= ($invMuebles->MueEnseres * (1-0.05) /7)/12;
				
				$invEquipo = DB::table('tbl_inversiones')->select('eqOficina')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				$depreciacion+= ($invEquipo->eqOficina  * (1-0.15) /10)/12;
				
				$invVehiculo = DB::table('tbl_inversiones')->select('vehiculo')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				$depreciacion += ($invVehiculo->vehiculo * (1-0.15) /20)/12;

				$invComputo = DB::table('tbl_inversiones')->select('eqComp')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				$depreciacion += ($invComputo->eqComp * (1-0.30) /5)/12;

				$intCP = DB::table('tbl_financiamiento')->select('intCP')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				
				$intLP = DB::table('tbl_financiamiento')->select('intLP')->where('id_negocio','=',Session::get('id_negocio'))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				
				$resAntes = $sumaIngresos - $sumaCV - $gf->total - $s->totalSueldos - $depreciacion - $intCP->intCP - $intLP->intLP; 

				?>
				
				{{ Form::text('I'.$j, number_format($resAntes,2) ,array(
							'placeholder'=>'Retiro',
							'class'=>'input text xwide numeric',
							'required'=>'true',
							'onChange'=>'validarSiNumero(this.value);'
							)) }}
				
				<?php 
				}if($k==2){

							?>

							{{ Form::text('T'.$j, 35 ,array(
							'placeholder'=>'Retiro',
							'class'=>'input text xwide numeric',
							'required'=>'true',
							'onChange'=>'validarSiNumero(this.value);'
							)) }}
							<?php
						}if($k==3){
							if($resAntes*0.35 < 0){
								$pago = 0 ;
							}else{
								$pago = $resAntes*0.35 ;
							}
							?>

							{{ Form::text('SP'.$j, number_format($pago) ,array(
							'placeholder'=>'Retiro',
							'class'=>'input text xwide numeric',
							'required'=>'true',
							'onChange'=>'validarSiNumero(this.value);'
							)) }}
							<?php
						}
						if($k==4){
							if($pago ==0 ){
								$favor= abs($resAntes);
							}else{
								$favor = abs($resAntes);
							}
							?>

							{{ Form::text('SF'.$j, number_format($favor) ,array(
							'placeholder'=>'Retiro',
							'class'=>'input text xwide numeric',
							'required'=>'true',
							'onChange'=>'validarSiNumero(this.value);'
							)) 
							}}
							<?php
						
					}
					}
				} 
			} 
			 ?>
			 </li>
			</td>
		</tr>
	</tbody>
</table>
{{Form::close()}}
</div>
@stop