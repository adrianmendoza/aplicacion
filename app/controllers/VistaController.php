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
		$user = DB::table('tbl_ingresos')->where('id_negocio', 1)->first();
		// echo   date("Y",$user->fecha_inicio);
		// echo   $user->fecha_fin;
		$this->layout->modulo = View::make('aplicacion.finanzas.ingresos');
	}

}

 ?>