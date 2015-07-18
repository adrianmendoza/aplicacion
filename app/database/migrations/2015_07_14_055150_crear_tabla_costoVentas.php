<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaCostoVentas extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_costoVentas', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('mes');
			$table->double('costoCompra', 10, 2);
			$table->double('comVendedor', 10, 2);
			$table->string('producto',30);
			$table->double('total', 10, 2);

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
		Schema::drop('tbl_costoVentas');
	}

}
