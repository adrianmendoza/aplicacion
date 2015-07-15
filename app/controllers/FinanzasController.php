<?php 

/**
* 
*/
class FinanzasController extends BaseController
{

	
	//Introduce configuracion de tiempo
	function ajustes_bd(){
	
		DB::table('tbl_ingresos')->insert(array(
			'mesInical' => Input::get('mesI'),
			'añoInicial' => Input::get('añoI'),
			'lapso' => Input::get('lapso'),
			'id_negocio'=>Session::get('id_negocio')
			));

		Session::put('lapso', Input::get('lapso'));
		Session::put('fecha_inicio',Input::get('añoI').'-'.Input::get('mesI').'-01');
		$ingreso = DB::table('tbl_ingresos')->where('id', DB::table('tbl_ingresos')->count())->first();
		Session::put('id_ingreso', $ingreso->id);

			return Redirect::to('/productos');
	}

	function mensaje(){
		Session::put('productos',Input::get('numero'));
		return Redirect::to('/productos');
	}


	function registro(){
		$data = Input::all();
		
		for ($i=1; $i <= count($data); $i++) { 
			Session::put('producto'.$i, Input::get('Producto'.$i));
			Session::get('producto'.$i);
		}

		return Redirect::to('/ingreso');
	}

	function ingresos_bd(){
		$data = Input::all();
		
		for ($i=1; $i <= Session::get('productos'); $i++) { 
			for ($j=1; $j <= Session::get('lapso'); $j++) { 
				
				$cantidad = new CantidadesModel;

				$cantidad->mesCant = date('Y-m-d', strtotime(Session::get('fecha_inicio').'+ '.$j.' months'));
				$cantidad->unidadMes = Input::get('U'.$j.'P'.$i);
				$cantidad->precioMes = Input::get('P'.$j.'P'.$i);
				$cantidad->producto = Session::get('producto'.$i);
				$total = ($cantidad->unidadMes) * ($cantidad->precioMes);
				$cantidad->total = $total;
				$cantidad->id_ingresos = Session::get('id_ingreso');
				$cantidad->save();
			}
		}
		return Redirect::to('/costosVenta');
	}
	function costoVentas(){
		for ($i=1; $i <= Session::get('productos'); $i++) { 
			for ($j=1; $j <= Session::get('lapso'); $j++) { 
			$u = DB::table('tbl_cantidades')->select('unidadMes')->where('id_ingresos','=',Session::get('id_ingreso'))->where('producto','=',Session::get('producto'.$i))->where('mesCant','=',date('Y-m-d',strtotime(Session::get('fecha_inicio').'+'.$j.' months')))->first();
				DB::table('tbl_costoVentas')->insert(array
					(
						'mes' =>date('Y-m-d', strtotime(Session::get('fecha_inicio').'+ '.$j.' months')),
						'costoCompra'=>Input::get('CC'.$j.'P'.$i),
						'comVendedor'=>Input::get('CV'.$j.'P'.$i),
						'producto'=>Session::get('producto'.$i),
						'total'=>number_format($u->unidadMes * ((Input::get('CC'.$j.'P'.$i) + Input::get('CV'.$j.'P'.$i)))),
						'id_negocio'=> Session::get('id_negocio')
						)
					);
			}
		}
		return Redirect::to('/gastosFijos');
	}




	function gastosFijos_bd(){
		for ($j=1; $j <= Session::get('lapso'); $j++){ 
				DB::table('tbl_gastosFijos')->insert(array
					(
						'mes' =>date('Y-m-d', strtotime(Session::get('fecha_inicio').'+ '.$j.' months')),
						'alquiler'=>	Input::get('A'.$j),
						'limpieza'=>	Input::get('L'.$j),
						'gas'=>			Input::get('G'.$j),
						'agua'=>		Input::get('AG'.$j),
						'energia'=>		Input::get('E'.$j),
						'telefono'=>	Input::get('T'.$j),
						'tgasLocal'=>	number_format(
								(
									Input::get('A'.$j) + Input::get('L'.$j) + Input::get('G'.$j) + Input::get('AG'.$j)+ Input::get('E'.$j)+ Input::get('T'.$j)
								)
						),

						'carFo'=>		Input::get('CF'.$j),
						'pubInt'=>		Input::get('PI'.$j),
						'tgasCom'=>		number_format(
								(
									Input::get('CF'.$j) + Input::get('PI'.$j)
								)
						),
						'abogado'=>		Input::get('AB'.$j),
						'conta'=>		Input::get('CO'.$j),
						'libreria'=>	Input::get('LI'.$j),
						'tgasAdm'=>		number_format(
								(
									Input::get('AB'.$j) + Input::get('CO'.$j) +  Input::get('LI'.$j)
								)
						),

						'total'=>		number_format(
									(Input::get('A'.$j) + Input::get('L'.$j) + Input::get('G'.$j) + Input::get('AG'.$j)+ Input::get('E'.$j)+ Input::get('T'.$j))
									 + (Input::get('CF'.$j) + Input::get('PI'.$j)) 
									 + (Input::get('AB'.$j) + Input::get('CO'.$j) +  Input::get('LI'.$j))		
						),
						'id_negocio'=> Session::get('id_negocio')
						)
					);
			}
		
		return Redirect::to('/sueldos');
	}


	function personas(){
			Session::put('nSocios', Input::get('numsocios'));
			Session::put('nEmpleados', Input::get('numempleados'));
			return Redirect::to('/registroSueldos');
	}



	
		

	


}

 ?>

