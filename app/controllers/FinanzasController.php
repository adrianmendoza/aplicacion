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

}

 ?>

