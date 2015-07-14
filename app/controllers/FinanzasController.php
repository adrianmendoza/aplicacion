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

		/*DB::table('tbl_cantidades')->insert(array(
   				 
   				 	    'mesCant' =>date('Y-m-d', strtotime(Session::get('fecha_inicio').'+ 1 months')),
						'unidadMes'=>Input::get('U1P1'),
						'precioMes'=>number_format(Input::get('P1P1')),
						'producto'=>Session::get('producto1'),
						'total'=>number_format(Input::get('U1P1')*Input::get('P1P1')) ,
						'id_ingresos'=> Session::get('id_ingreso')

		));*/

				/*DB::table('tbl_cantidades')->insert(array
					(
						'mesCant' =>date('Y-m-d', strtotime(Session::get('fecha_inicio').'+ '.$j.' months')),
						'unidadMes'=>Input::get('U'.$j.'P'.$i),
						'precioMes'=>Input::get('P'.$j.'P'.$i),
						'producto'=>Session::get('producto'.$i),
						'total'=>number_format(Input::get('U'.$j.'P'.$i)*Input::get('P'.$j.'P'.$i)) ,
						'id_ingresos'=> Session::get('id_ingreso')
						)
					);*/
				
				
			}
		}
		return Redirect::to('/costosVenta');
	}
		

	


}

 ?>

