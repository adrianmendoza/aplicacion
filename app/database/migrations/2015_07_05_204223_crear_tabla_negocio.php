<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaNegocio extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_negocio', function(Blueprint $table)
		{
			$table ->increments('id');
			$table ->string('nombreNeg', 100);
			$table ->string('histNeg', 1000);
			$table ->string('socNeg', 500);
			$table ->string('prodSerNeg', 1000);
			$table->date('fecha_creacion');
			$table-> unsignedInteger('id_usuario');
			$table-> foreign('id_usuario')->references('id')->on('tbl_usuarios');
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
				Schema::drop('tbl_negocio');

	}

}
