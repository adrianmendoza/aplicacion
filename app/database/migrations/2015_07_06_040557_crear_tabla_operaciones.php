<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaOperaciones extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_operaciones', function(Blueprint $table)
		{
			$table ->increments('id');
			$table ->string('operaciones', 1000);
			$table ->string('capacidad', 500);
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
			Schema::drop('tbl_operaciones');

	}

}
