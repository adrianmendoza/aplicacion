<?php 

/**
* 
*/
class UsuariosModel extends Eloquent{

	protected $table = "tbl_usuarios";
	protected $fillable = array('nombre', 'correo', 'password');


	private $regla = array(
		'email' => 'unique:tbl_usuarios|required',
		'nombre' => 'required|alpha',
		'clave' => 'required|min:8',
		'apellido' =>'required|alpha'
		);

	private $mensaje = 
	array('email.unique' =>"La cuenta de correo ya se encuentra registrada" ,
		'email.required' => "La direccion de correo electronico es obligatoria",
		'nombre.required' => 'El nombre es requerido',
		'nombre.alpha' => 'El nombre debe contener unicamente letras',
		'apellido.required'=>'El campo apellidos es requerido',
		'apellido.alpha'=>'El apellido debe contener unicametne letras',
		'clave.required'=>'La contraseña es requerida',
		'clave.min'=>'La contraseña debe tener minimo 8 caracteres'
		 );

	private $errores;
	function validador($data){
		$validacion  = Validator::make($data, $this->regla, $this->mensaje);
	if($validacion->fails()){
		$this->errores = $validacion->messages()->all();
		return false;
	}	
		return true;	
	}

	function mostrar_errores(){
		return $this->errores;
	}	
}

?>