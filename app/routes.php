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
Route::get('ingresos','VistaController@ingresos');


Route::post('registrar','UsuarioController@registrar_bd');
Route::post('guardar','UsuarioController@editar');
Route::post('nuevo','InsercionController@negocio_bd');
Route::post('industria','InsercionController@industria_bd');
Route::post('comercial','InsercionController@comercial_bd');
Route::post('operaciones','InsercionController@operaciones_bd');
Route::post('equipo','InsercionController@equipo_bd');
Route::post('legal','InsercionController@legal_bd');
Route::post('implementacion', 'InsercionController@implementacion_bd');
Route::post('ajustes','InsercionController@ajustes_bd');
Route::post('validar','UsuarioController@validar');
