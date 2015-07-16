<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaImpuestos extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_impuestos', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('mes');
			
			$table->double('vAntes', 10, 2);
			$table->double('tasa', 10, 2);
			$table->double('vPagar', 10, 2);
			$table->double('sFavor', 10, 2);
			
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
		Schema::drop('tbl_impuestos');
	}

}
