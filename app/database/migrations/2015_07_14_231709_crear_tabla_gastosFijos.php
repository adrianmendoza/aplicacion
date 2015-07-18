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
			$table->double('alquiler', 10, 2);
			$table->double('limpieza', 10, 2);
			$table->double('gas', 10, 2);
			$table->double('agua', 10, 2);
			$table->double('energia', 10, 2);
			$table->double('telefono', 10, 2);
			$table->double('tgasLocal', 10, 2);

			$table->double('carFo', 10, 2);
			$table->double('pubInt', 10, 2);
			$table->double('tgasCom', 10, 2);

			$table->double('abogado', 10, 2);
			$table->double('conta', 10, 2);
			$table->double('libreria', 10, 2);
			$table->double('tgasAdm', 10, 2);
			$table->double('total',12,2);

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
