<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaEquipo extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_equipo', function(Blueprint $table)
		{
			$table ->increments('id');
			$table ->string('perClave', 500);
			$table ->string('perSumar', 500);
			$table ->string('departamentos', 500);
			$table-> unsignedInteger('id_negocio');
			$table-> foreign('id_negocio')->references('id')->on('tbl_negocio');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('tbl_equipo');
	}

}
