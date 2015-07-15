<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaInversiones extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_inversiones', function(Blueprint $table)
		{
			//
			$table->increments('id');
			$table->date('mes');
			$table->double('maqEquipo', 10, 2);
			$table->double('MueEnseres', 10, 2);
			$table->double('eqOficina', 10, 2);
			$table->double('vehiculo', 10, 2);
			$table->double('eqComp', 10, 2);
			$table->double('totalMes', 10, 2);
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
		Schema::drop('tbl_inversiones');
	}

}
