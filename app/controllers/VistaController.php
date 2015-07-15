<?php 

/**
* 
*/
class VistaController extends BaseController
{
	protected $layout = 'layouts.master';

	function inicio(){
		$this->layout->modulo = View::make('inicio.home');
	}

	function negocio(){
		if(Session::get('id_usuario')){
		$this->layout->modulo = View::make('aplicacion.negocio');
		}else{
			return Redirect::to('/acceder');
		}
	}

	function industria(){
		if(Session::get('id_usuario')){
			$dir = DB::table('tbl_negocio')->count();
			Session::put('id_negocio', $dir);
			$this->layout->modulo = View::make('aplicacion.industria');}
		else{
			return Redirect::to('/acceder');
		}
	}

	function comercial(){
		if(Session::get('id_usuario')){
			$this->layout->modulo = View::make('aplicacion.comercial');
		}else{
			return Redirect::to('/acceder');
		}
	}

	function operaciones(){
		if(Session::get('id_usuario')){
		$this->layout->modulo = View::make('aplicacion.operaciones');
		}else{
			return Redirect::to('/acceder');
		}
	}


	function equipo(){
		if(Session::get('id_usuario')){
		$this->layout->modulo =View::make('aplicacion.equipo');
		}else{
		return Redirect::to('/acceder');
		}
	}

	function legal(){
		if(Session::get('id_usuario')){
		$this->layout->modulo = View::make('aplicacion.legal');
		}else{
			return Redirect::to('/acceder');
		}
	}

	function implementacion(){
		if(Session::get('id_usuario')){
			$this->layout->modulo = View::make('aplicacion.implementacion');
		}else{
			return Redirect::to('/acceder');
		}
	}

	function configuracion(){
		$this->layout->modulo = View::make('aplicacion.finanzas.configuracion');
	}

	function ingresos(){
		$this->layout->modulo = View::make('aplicacion.finanzas.ingresos');
	}

	function producto(){
		$this->layout->modulo = View::make('aplicacion.finanzas.productos');	
	}

	function costosVenta(){
		$this->layout->modulo = View::make('aplicacion.finanzas.costosVenta');
	}

	function gastosFijos(){
		$this->layout->modulo = View::make('aplicacion.finanzas.gastosFijos');
	}

	function sueldo(){
		$this->layout->modulo = View::make('aplicacion.finanzas.sueldos');	
	}

	function registroSueldos(){
		$this->layout->modulo = View::make('aplicacion.finanzas.registrosSueldos');		
	}

}

 ?>