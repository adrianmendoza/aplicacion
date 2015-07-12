@section('modulo')
<div class="modal active" id="modal1">
	<div class="content">
		<div class="row">
			<div class="ten columns centered text-center">
				<h2>{{ $encabezado }}</h2>
				@foreach($cuerpo as $mensaje)
				<p>{{ $mensaje }}</p>
				@endforeach
				@if(!Session::get('id_usuario'))
					@if($encabezado==='Bienvenido')
					{{ HTML::image('img/email.png') }}
					<p class="btn primary medium">
					<a href={{  url('/acceder')  }}>Acceder</a>
				</p>
					@else
					{{ HTML::image('img/alerta.png') }}
					<br>
				<p class="btn primary medium">
					<a href="javascript: history.go(-1)">Regresar</a>
				</p>
					@endif
				@else
				<p class="btn primary medium">
					<a href={{ url('/principal/'.$identificador) }}>Entrar</a>
				</p>
				@endif
			</div>
		</div>
	</div>
</div>
@stop
