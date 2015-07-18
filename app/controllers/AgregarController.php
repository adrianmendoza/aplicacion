<?php 

/**
* 
*/
class AgregarController extends BaseController
{

	//Insertar  Negocio en la tabla tbl_negocio
	function negocio_bd(){
<<<<<<< HEAD
		$fecha_actual = date('Y-m-d');
		echo $fecha_actual;
=======

>>>>>>> 2ffe0cc2ee32f0f2204ccf023c5e2684a559562d
		DB::table('tbl_negocio')->insert(array('nombreNeg' => Input::get('negocio'),
		'histNeg'=>Input::get('historia'),
		'socNeg'=>Input::get('socios'), 
		'prodSerNeg'=>Input::get('prodServ'),
<<<<<<< HEAD
		'fecha_creacion'=>date('Y-m-d'),
=======
>>>>>>> 2ffe0cc2ee32f0f2204ccf023c5e2684a559562d
		'id_usuario'=> Session::get('id_usuario')
		  ));
		 return Redirect::to('/industria');
	}


	//Insertar Industria en la tabla  tbl_industria
	function industria_bd(){
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
		 ) );
		return Redirect::to('/comercial');
	}


	//Insertar Comercial en tabla tbl_comercial
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



	//Insertar Operaciones en tabla tbl_operaciones
	function operaciones_bd(){
		DB::table('tbl_operaciones')->insert(array
			('operaciones' => Input::get('proceso'),
				'capacidad'=> Input::get('capacidad'),
				'id_negocio'=>Session::get('id_negocio')
		 	));
		return Redirect::to('/equipo');
	}


	//Insertar Equipo tabla tbl_negocios
	function equipo_bd(){
		DB::table('tbl_equipo')->insert(array(
			'perClave' =>Input::get('perClave') ,
			'perSumar'=>Input::get('perSumar'),
			'departamentos' =>Input::get('organizacion'),
			'id_negocio' => Session::get('id_negocio')
			));
		return Redirect::to('/legal');
	}


	//Insertar Legal tabla tbl_legal

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

	//Insertar Implementacion tabla tbl_implementacion

	function implementacion_bd(){
		DB::table('tbl_implementacion')->insert(array(
			'implementacion'=>Input::get('implementacion'),
			'id_negocio'=>Session::get('id_negocio')
			));
		return Redirect::to('/ajustes'); 
	}

}

 ?>