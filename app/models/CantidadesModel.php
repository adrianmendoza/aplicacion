<?php 

/**
* 
*/
class CantidadesModel extends Eloquent
{
	protected $table = 'tbl_cantidades';
	protected $fillable = array('mesCant', 'unidadMes', 'precioMes','total','producto','id_ingreso');
	public $timestamps = false;

}

 ?>