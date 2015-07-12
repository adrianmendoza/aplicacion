<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaComercial extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_comercial', function(Blueprint $table)
		{
			$table ->increments('id');
			$table ->string('analisisPrecios', 1000);
			$table ->string('locales', 500);
			$table ->string('publicidad', 600);
			$table ->string('promociones', 600);
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
		Schema::drop('tbl_comercial');
	}

}
