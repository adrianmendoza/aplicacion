<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaCantidades extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_cantidades', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('mesCant');
			$table->integer('unidadMes');
			$table->decimal('precioMes', 5, 2);
			$table->string('producto',30);
			$table->decimal('total', 5, 2);
			
			$table-> unsignedInteger('id_ingresos');
			$table-> foreign('id_ingresos')->references('id')->on('tbl_ingresos');

		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('tbl_cantidades');
	}

}
