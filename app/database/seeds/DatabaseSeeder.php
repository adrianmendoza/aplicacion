<?php

class DatabaseSeeder extends Seeder {

	/**
	 * Run the database seeds.
	 *
	 * @return void
	 */
	public function run()
	{
		Eloquent::unguard();

		
		//$this->call('UserTableSeeder');
		DB::table('tbl_usuarios')->insert(array('nombre'=>'Adrian Marcelo','apellido'=>'Mendoza Mendoza','clave'=>md5('adrianmmm'),'email'=>'marcelomendoza@hotmail.es','identificador' => uniqid(),'estado'=>'Activado','rol'=>'Administrador', 'created_at'=>'2015-06-28 00:00', 'updated_at'=>'2015-06-28 00:00'));
		DB::table('tbl_usuarios')->insert(array('nombre'=>'Adrian','apellido'=>'Mendoza','clave'=>md5('contraseña'),'email'=>'adrianmendoza_2bc@hotmail.com','identificador' => uniqid(),'estado'=>'Activado','rol'=>'Usuario', 'created_at'=>'2015-06-28 00:00', 'updated_at'=>'2015-06-28 00:00'));
		$this->comand->info('Usuario Administrador Creado');
	}

}
