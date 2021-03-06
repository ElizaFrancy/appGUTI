<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<jsp:include page="../masterpage/superior.jsp" />

<!DOCTYPE HTML>
<head>
	<style>
	
	.consulta select{width:180px; height: 200px;margin:0 0 50px 0;border:1px solid #ccc;padding:10px;border-radius:10px 0 0 10px;}
	.clear{clear:both;text-align:center}
	 .consulta div{float:left;width:200px;text-align:center}
	 .consulta input {margin:25px 1px 0 1px;border:1px solid #ccc;padding:10px;}
	.izq{border-radius:10px 0 0 10px;}
	.der{border-radius:0 10px 10px 0;}
	</style>

</head>
<body >
	<div class="cabecera">
	<h2>.:: Registro de Consultas</h2>
	<hr>
</div>
	<form action="" method="post" id="formulario" class="consulta">
		<div >
			<select name="origen[]" id="origen" multiple="multiple" size="8">
				<option value="1">Opci&oacute;n 1</option>
				<option value="2">Opci&oacute;n 2</option>
				<option value="3">Opci&oacute;n 3</option>
				<option value="4">Opci&oacute;n 4</option>
				<option value="5">Opci&oacute;n 5</option>
				<option value="6">Opci&oacute;n 6</option>
				<option value="7">Opci&oacute;n 7</option>
				<option value="8">Opci&oacute;n 8</option>
			</select>
		</div>
		<div>
			<input type="button" class="pasar izq" value="Pasar &raquo;"><input type="button" class="quitar der" value="&laquo; Quitar"><br />
			<input type="button" class="pasartodos izq" value="Todos &raquo;"><input type="button" class="quitartodos der" value="&laquo; Todos">
		</div>
		<div class="">
			<select name="destino[]" id="destino" multiple="multiple" size="8"></select>
		</div>
		<p class="clear"><input type="submit" class="submit" value="Procesar formulario"></p>
	</form>
	<script type="text/javascript">
	$().ready(function() 
	{
		$('.pasar').click(function() { return !$('#origen option:selected').remove().appendTo('#destino'); });  
		$('.quitar').click(function() { return !$('#destino option:selected').remove().appendTo('#origen'); });
		$('.pasartodos').click(function() { $('#origen option').each(function() { $(this).remove().appendTo('#destino'); }); });
		$('.quitartodos').click(function() { $('#destino option').each(function() { $(this).remove().appendTo('#origen'); }); });
		$('.submit').click(function() { $('#destino option').prop('selected', 'selected'); });
	}); 
	</script>
		<h2>Resultado obtenido:</h2>
		</body>
		<jsp:include page="../masterpage/inferior.jsp" />
