<?php 


/**
 * 
 */
 class UsuarioController extends BaseController
 {
 	protected $layout = 'layouts.master';
 	private $nombre_completo;
		private $email;

 	function registrar(){
 		$this->layout->modulo = View::make('usuarios.registrar');
 	}
     function acceder(){
			Session::flush();
			$this->layout->modulo = View::make('usuarios.acceder');
	}


	function registrar_bd (){

			$usuarios = new UsuariosModel;
			$usuarios->nombre = Input::get('nombre');
			$usuarios->apellido = Input::get('apellido');
			$usuarios->email = Input::get('email');
			$usuarios->clave = md5(Input::get('clave'));
			$usuarios->identificador = uniqid();
			$usuarios->estado = "Desactivado";
			$usuarios->rol="Usuario";
			 $data =array('email' => Input::get('email'),
			 				'nombre' =>Input::get('nombre'),
			 				'apellido' => Input::get('apellido'),
			 				'clave' =>Input::get('clave'),
			 				);
			 if(!$usuarios->validador($data)){
			 	$this->layout->modulo = View::make('mensaje',array('encabezado' => 'Error:',
				'cuerpo' =>$usuarios->mostrar_errores()));
			 }else{
			 $usuarios->save();		
			 $datos_usuario = $usuarios->find($usuarios->id);
			 $this->nombre_completo= $datos_usuario->nombre . ' '.$datos_usuario->apellido ;
			 $this->email= $datos_usuario->email;
			 $data = array('identificador' =>$datos_usuario->identificador);
			 Mail::send('email', $data, function($message){
			 	$message->to($this->email, $this->nombre_completo)->subject('Bienvenido al sistema de creacion de planes de negocio');
			 });
			 	$mensajes = array('mensajeA' => 'En este momento se envio un email a tu cuenta de correo',
			 		'mensajeB' => 'Valida tu cuenta para poder ingresar a nuestra aplicacion');

				$this->layout->modulo =  View::make('mensaje',array('encabezado' => 'Bienvenido','cuerpo' => $mensajes));
			}

		}

		function activar($identificador){
			UsuariosModel::where('identificador','=',$identificador)->update(array('estado' => 'Activado'));
			 return Redirect::to('principal/'.$identificador);
		}



		function perfil($identificador){
			if(Session::get('id_usuario')){
			$user = DB::table('tbl_usuarios')->where('identificador', $identificador)->first();
			$this->layout->modulo = View::make('usuarios.perfil', array('nombre' => $user->nombre, 'apellido'=>$user->apellido, 'identificador'=>$identificador));
			}else{
			return Redirect::to('/acceder');
		}

		}

		function principal($identificador){
			if(Session::get('id_usuario')){
			$user = DB::table('tbl_usuarios')->where('identificador', $identificador)->first();
			$data = array('identificador' => $user->identificador,
							'id' =>$user->id,
							'nombre'=>$user->nombre,
							'apellido'=>$user->apellido,
							'email'=>$user->email);
			$this->layout->modulo= View::make('aplicacion.inicio',$data);
		}else{
			return Redirect::to('/acceder');
		}
		}


		function validar(){
			$data = Input::all();
			//Reglas de validacion
			$reglas  = array('email' => 'required',
			'password'=>'required|min:8');
			//Instanciar validador de laravel
			$validacion = Validator::make($data, $reglas);
			 if($validacion->fails()){
				$errores = $validacion->messages()->all();
				$this->layout->modulo = View::make('mensaje',array('encabezado' => 'Error de validacion',
				'cuerpo'=>$errores ));
			}
			else{
				$usuarios = new UsuariosModel;
				$email = Input::get('email');
				$password = Input::get('password');

				$datos_usuario = $usuarios->where('email', '=', $email)->where('clave','=',md5($password))->first();
				if(!$datos_usuario){
					$encabezado = "Error!";
					$cuerpo = "El email/contraseña no son correctos";

					$this->mostrar_mensajes($encabezado, $cuerpo);
				}else{
					if($datos_usuario->estado == 'Desactivado'){
						$encabezado = "Error!";
						$cuerpo = "Su cuenta no ha sido activada";

						$this->mostrar_mensajes($encabezado, $cuerpo);
						
					}
					else{
						//Crear la sesion, Id Rol NOMBRES
						Session::put('id_usuario',$datos_usuario->id);
						Session::put('nombre',$datos_usuario->nombre);
						Session::put('apellido',$datos_usuario->apellido);
						Session::put('identificador',$datos_usuario->identificador);
						Session::put('rol',$datos_usuario->rol);
						$encabezado = "";
						$cuerpo = "";

						$this->mostrar_mensajes($encabezado, $cuerpo);
					} 
				}
			}
		}

		function mostrar_mensajes($encabezado, $mensaje){
			$mensajes = array('mensaje' => $mensaje);
			$identificador = Session::get('identificador');
			$this->layout->modulo=  View::make('mensaje',array('encabezado' => $encabezado,'cuerpo'=>$mensajes, 'identificador'=>Session::get('identificador')));
		}

		function cerrar(){
			Session::flush();
			return Redirect::to('/acceder');

		}

		function editar(){
			$user = UsuariosModel::find(Session::get('id_usuario'));
			$user->nombre = Input::get('nombre');
			$user->apellido = Input::get('apellido');
			$user->save();
			
		}
} 

 ?>