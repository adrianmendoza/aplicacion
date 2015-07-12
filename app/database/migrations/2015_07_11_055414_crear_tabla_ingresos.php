<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaIngresos extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_ingresos', function(Blueprint $table)
		{
			$table ->increments('id');
			$table->date('fecha_inicio');
			$table->date('fecha_fin');
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
		Schema::drop('tbl_ingresos');

	}

}
