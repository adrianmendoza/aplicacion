<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CrearTablaFinanciamiento extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('tbl_financiamiento', function(Blueprint $table)
		{
			$table->increments('id');
			$table->date('mes');
			$table->double('aporDueño', 10, 2);
			$table->double('retDueño', 10, 2);
			$table->double('totDueños', 10, 2);

			$table->double('prestCP', 10, 2);
			$table->double('devCP', 10, 2);
			$table->double('totCP', 10, 2);
			$table->double('intCP', 10, 2);

			$table->double('prestLP', 10, 2);
			$table->double('devLP', 10, 2);
			$table->double('totLP', 10, 2);
			$table->double('intLP', 10, 2);

			$table->double('subDona', 10, 2);			
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
		Schema::drop('tbl_financiamiento');
	}

}
