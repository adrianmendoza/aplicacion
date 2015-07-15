<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaGastosFijos extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_gastosFijos', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('mes');
			$table->decimal('alquiler', 10, 2);
			$table->decimal('limpieza', 10, 2);
			$table->decimal('gas', 10, 2);
			$table->decimal('agua', 10, 2);
			$table->decimal('energia', 10, 2);
			$table->decimal('telefono', 10, 2);
			$table->decimal('tgasLocal', 10, 2);

			$table->decimal('carFo', 10, 2);
			$table->decimal('pubInt', 10, 2);
			$table->decimal('tgasCom', 10, 2);

			$table->decimal('abogado', 10, 2);
			$table->decimal('conta', 10, 2);
			$table->decimal('libreria', 10, 2);
			$table->decimal('tgasAdm', 10, 2);
			$table->decimal('total',12,2);

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
		Schema::drop('tbl_gastosFijos');
	}

}
