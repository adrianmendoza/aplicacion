<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaSueldos extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_sueldos', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('mes');
			$table->double('sueldoSocios', 10, 2);
			$table->double('sueldoEmpleados', 10, 2);
			$table->double('totalSueldos', 10, 2);

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
		Schema::drop('tbl_sueldos');
	}

}
