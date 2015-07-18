<!DOCTYPE html>
<html>
<head>
	<title>Iniciar</title>
	{{ HTML::style('css/gumby.css');  }}
	{{ HTML::style('css/main.css');  }}
	{{ html::style('css/sweetalet.css'); }}
	{{ HTML::script('js/gumby.js');	}}
	{{ HTML::script('js/gumby.init.js'); }}
	{{ HTML::script('js/jquery.min.js');  }}
	{{ HTML::script('js/modernizr-2.6.2.min.js');  }}
	{{ HTML::script('js/plugins.js');  }}
	{{ HTML::script('js/jquery.numeric.js');    }}
	{{ HTML::script('js/sweetalert.js');  }}
	<script src= "https://www.google.com/jsapi?autoload={
            'modules':[{
              'name':'visualization',
              'version':'1',
              'packages':['corechart']
            }]
          }'"></script>

    <script type='text/javascript'>
      google.setOnLoadCallback(drawChart);
<<<<<<< HEAD
=======

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses'],
          ['2004',  1000,      400],
          ['2005',  1170,      460],
          ['2006',  660,       1120],
          ['2007',  1030,      540]
        ]);

        var options = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
>>>>>>> 2ffe0cc2ee32f0f2204ccf023c5e2684a559562d
    </script>

</head>
<body>
<div class="navbar" id="navegacion">
<ul style="float:left">
	<li><a href="{{ url('/') }}"><h3 class="blanco">SEFAN</h3></a></li>
</ul>
<ul style="float:right">
	@if(Session::get('id_usuario'))
		@if(Session::get('rol')=='Administrador')
		<li>
			<a href="#"><span>Administracion</span><i class="icon-doc-text"></i></a>
		</li>
		@else
		<li>
			<a href={{  url('/nuevo')  }}><span>Nuevo</span><i class="icon-plus-squared"></i></a>
		</li>
		@endif	
	<li>
		<a href={{ url('/perfil/'.Session::get('identificador')) }}><span>Perfil</span><i class="icon-bookmark"></i></a>
	</li>
	<li>
		<a href="{{ url('/cerrar') }}"><span>Cerrar</span><i class="icon-cancel"></i></a>
	</li>
	@else
	<li>
		<a href="{{ url('/acceder') }}"><span>Acceder</span><i class="icon-user"></i></a>
	</li>
	<li>
		<a href="{{ url('/registrar') }}"><span>Registrarse</span><i class="icon-plus"></i></a>
	</li>
	@endif
</ul>

	
</div>
@yield('modulo')


</body>
</html>