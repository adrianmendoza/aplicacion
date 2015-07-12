<?php 
/**
* 
*/
class InsercionController extends BaseController
{
	
	protected $layout = "layout.master";

function negocio_bd(){
	echo Input::get('negocio');
	echo Input::get('historia');
	echo Input::get('socios');
	echo Input::get('prodServ');

		/*DB::table('tbl_negocio')->insert(array('nombreNeg' => Input::get('negocio'),
		'histNeg'=>Input::get('historia'), 'socNeg'=>Input::get('socios'), 
		 'prodSerNeg'=>Input::get('prodServ'), 'id_usuario'=> 1));
		 return Redirect::to('/industria');*/
	}

	


function industria_bd(){
		echo DB::table('tbl_industria')->count();
		echo Session::get('id_negocio');
		DB::table('tbl_industria')->insert(
		array(
		 'mercado'       =>Input::get('mercado'),
		 'tamaño'        =>Input::get('tamaño'),
		 'evolucion'     =>Input::get('evolucion'),
		 'competencia'   =>Input::get('competencia'),
		 'ncompetencia'  =>Input::get('n_Competencia'),
		 'ventajas'      =>Input::get('Ventajas'),
		 'proveedores'   =>Input::get('Proveedores'),
		 'distribuidores'=>Input::get('Distribuidores'),
		 'alianzas'      =>Input::get('Alianzas'),
		 'id_negocio'    =>Session::get('id_negocio')
		 )
		);

		return Redirect::to('/comercial');

	}


function comercial_bd(){
		DB::table('tbl_comercial')->insert(
		array(
		 'analisisPrecios'       =>Input::get('analisis'),
		 'locales'        =>Input::get('locales'),
		 'publicidad'     =>Input::get('publicidad'),
		 'promociones'   =>Input::get('promociones'),
		 'id_negocio'  =>Session::get('id_negocio')
		 )
		);

		return Redirect::to('/operaciones');
	}




	function operaciones_bd(){
		DB::table('tbl_operaciones')->insert(array
			('operaciones' => Input::get('proceso'),
				'capacidad'=> Input::get('capacidad'),
				'id_negocio'=>Session::get('id_negocio')
		 	)
		);
		return Redirect::to('/equipo');
	}


	function equipo_bd(){
		DB::table('tbl_equipo')->insert(array(
			'perClave' =>Input::get('perClave') ,
			'perSumar'=>Input::get('perSumar'),
			'departamentos' =>Input::get('organizacion'),
			'id_negocio' => Session::get('id_negocio')
			)

		);
		return Redirect::to('/legal');
	}


	function legal_bd(){
		DB::table('tbl_legal')->insert(array(
			'tipoEmp'=>Input::get('tipoEmpresa'),
			'propIntelectual'=>Input::get('pIntelectual'),
			'marcas'=>Input::get('marcas'),
			'contRelevantes'=>Input::get('contratos'),
			'id_negocio'=>Session::get('id_negocio')
			));

		return  Redirect::to('/implementacion');
	}


	function implementacion_bd(){
		DB::table('tbl_implementacion')->insert(array(
			'implementacion'=>Input::get('implementacion'),
			'id_negocio'=>Session::get('id_negocio')
			));
		return Redirect::to('/configuracion'); 
	}

	/*function ajustes_bd(){
		Session::put('id_negocio',1);
		$data = Input::all();
		$reglas  = array('fecha_fin' => 'after:'Input::get('añoI').'-'.Input::get('mesI').'-01');
		$validacion = Validator::make($data, $reglas);
		if ($validacion->fails()) {
			echo "error";
		}
		
		echo Input::get('añoF').'-'.Input::get('mesF').'-01';
		if(mesI)
		Session::get('tiempo', )
		
		DB::table('tbl_ingresos')->insert(array(
			'fecha_inicio' => date_create(Input::get('añoI').'-'.Input::get('mesI').'-01'),
			'fecha_fin' => date_create(Input::get('añoF').'-'.Input::get('mesF').'-01'),
			'id_negocio'=>Session::get('id_negocio')));
		echo 'Funciona';
		return Redirect::to('/ingresos');
	}*/

	

}

 ?>