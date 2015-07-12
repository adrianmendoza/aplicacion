<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaIndustria extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_industria', function(Blueprint $table)
		{
			$table ->increments('id');
			$table ->string('mercado', 1000);
			$table ->string('tamaño', 1000);
			$table ->string('evolucion', 1000);
			$table ->string('competencia', 2000);
			$table ->string('ncompetencia', 2000);
			$table ->string('ventajas', 2000);
			$table ->string('proveedores', 2000);
			$table ->string('distribuidores', 2000);
			$table ->string('alianzas', 1000);
			
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
		Schema::drop('tbl_industria');
	}

}
