@section('modulo')
<div class='row' >


<div class="twelve columns">
<div class="ten columns">
	<div class="alert danger margen-top-10x">
	<h3 class="centro">Informe</h3>
</div>
</div>
<div class="two columns">
	<div class="danger btn large margen-top-10x" >
	{{Form::button('Principal')}}
	</div>
</div>	
</div>

<<<<<<< HEAD
<div class="graficos">
	<div class="alert primary">
		<h3 class="centro">
			INGRESOS MENSUALES
		</h3>

	</div>	
	<div id="curve_chart" class="margen-top-10x"></div>
</div>
	
</div>
<?php
$vector="['Mes','Total'],"; 

$total=0;

for ($i=1; $i <= Session::get('lapso'); $i++) { 
	for ($j=1; $j <= Session::get('productos'); $j++) { 
 	$cv = DB::table('tbl_costoVentas')->select('total','mes')->where('id_negocio','=',Session::get('id_negocio'))->where('producto','=',Session::get('producto'.$j))->where('mes','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$i.' months')))->first('mes','total');

 	$total = $cv->total;
 	$mes = $cv->mes;
 		for ($k=0; $k < count($total); $k++) { 
 			 $mesActual = date('Y-m',strtotime($mes));
 			 if($k<(count($total)-1)){
 			 $vector= $vector."['".$mesActual."',".$total."]";
				}else{
			$vector= $vector."['".$mesActual."',".$total."],";
			}
		}
 }
}	
echo "<script>
 google.setOnLoadCallback(drawChart);
function drawChart() {
        var data = google.visualization.arrayToDataTable([".
        $vector."]);

        var options = {
          title: 'Grafico Costo Ventas',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
      </script>";


 ?>
=======
<div class="">
	
</div>
	
</div>
>>>>>>> 2ffe0cc2ee32f0f2204ccf023c5e2684a559562d
@stop