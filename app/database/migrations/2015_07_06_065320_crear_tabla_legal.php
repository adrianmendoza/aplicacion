<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaLegal extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_legal', function(Blueprint $table)
		{
			$table ->increments('id');
			$table ->string('tipoEmp', 1000);
			$table ->string('propIntelectual', 1000);
			$table ->string('marcas', 600);
			$table ->string('contRelevantes', 600);
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
			Schema::drop('tbl_legal');
	}

}
