<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/



Route::get('/','VistaController@inicio');
Route::get('registrar','UsuarioController@registrar');
Route::get('acceder', 'UsuarioController@acceder');
Route::get('activar/{identificador}','UsuarioController@activar');


Route::get('cerrar', 'UsuarioController@cerrar');
Route::get('nuevo','VistaController@negocio');
Route::get('perfil/{identificador}','UsuarioController@perfil');
Route::get('principal/{identificador}', 'UsuarioController@principal');
Route::get('industria','VistaController@industria');
Route::get('comercial','VistaController@comercial');
Route::get('operaciones','VistaController@operaciones');
Route::get('equipo','VistaController@equipo');
Route::get('legal','VistaController@legal');
Route::get('implementacion','VistaController@implementacion');
Route::get('ajustes', 'VistaController@configuracion');
Route::get('ingreso','VistaController@ingresos');
Route::get('productos','VistaController@producto');
Route::get('costosVenta','VistaController@costosVenta');


Route::post('registrar','UsuarioController@registrar_bd');
Route::post('guardar','UsuarioController@editar');
Route::post('nuevo','AgregarController@negocio_bd');
Route::post('industria','AgregarController@industria_bd');
Route::post('comercial','AgregarController@comercial_bd');
Route::post('operaciones','AgregarController@operaciones_bd');
Route::post('equipo','AgregarController@equipo_bd');
Route::post('legal','AgregarController@legal_bd');
Route::post('implementacion','AgregarController@implementacion_bd');
Route::post('ajustes','FinanzasController@ajustes_bd');
Route::post('validar','UsuarioController@validar');
Route::post('productos','FinanzasController@mensaje');
Route::post('registroProductos','FinanzasController@registro');
Route::post('ingresos','FinanzasController@ingresos_bd');
Route::post('costoVentas', 'FinanzasController@costoVentas');