<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaUsuarios extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_usuarios', function(Blueprint $table)
		{
			$table ->increments('id');
			$table ->string('nombre', 100);
			$table ->string('apellido', 50);
			$table ->string('clave', 32);
			$table ->string('email', 62);
			$table ->string('identificador',13);
			$table ->string('estado', 13);
			$table ->string('rol', 15);
			$table ->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('tbl_usuarios');
	}

}
