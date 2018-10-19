<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<%@ include file="fragments/head.jsp"%>
<title>Crear nuevo evento</title>
<script
	src="http://maps.googleapis.com/maps/api/js?libraries=places&key=AIzaSyBa-NxlN1zc0dlp5bdYBzt1xzS2F1ZVlro"
	type="text/javascript"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>

</head>
<body>

	<%@ include file="fragments/header.jsp"%>

	<form action="/crearEventoNuevo" method="post">
		<div class="container text-center">
			<h1>Crear evento</h1>
		</div>

		<div id="buscador" class="container">
			<div class=" container form-group has-search">
				<span class="fa fa-search form-control-feedback"></span> <input
					id="searchTextField" type="text" class="form-control"
					placeholder="Elige un lugar" autocomplete="on" runat="server"
					required>
			</div>
			<input type="hidden" id="latitud" name="latitud" /> <input
				type="hidden" id="longitud" name="longitud" /> <input type="hidden"
				id="lugar" name="lugar" /> <input type="hidden" id="imagen"
				name="imagen" /> <input type="hidden" id="ciudad" name="ciudad" />
			<input type="hidden" id="pais" name="pais" /> <input type="hidden"
				id="url" name="url" />
		</div>
		<!-- 		
		<div id="descripcion" class="container text-center mt">
			<h3>Descripcion del evento</h3>
			<textarea required="required" placeholder="Descripcion del evento"
				style="min-width: 40%" id="descripcion" name="descripcion"></textarea>
		</div>
 -->
		<div class=" container form-group">
			<textarea class="form-control" rows="3" id="descripcion"
				name="descripcion"
				placeholder="Cuentanos que has hecho y como lo has pasado en este sitio . . ."
				required></textarea>
		</div>

		<div id="fecha" class="container text-center mt">
			<h3>Fecha del evento</h3>
			<input required="required" type="datetime-local" id="fecha"
				name="fecha" max="9999-12-12T00:00:00.00">
		</div>
		<div class="container">
			<input id="datepicker" width="276" value="02/04/2018" />
		</div>


		<div class="container text-center" id="enviar">
			<input type="submit" name="enviar">
		</div>

	</form>

	<script src="js/getPlace.js"></script>
	<script src="js/setImage.js"></script>
	<script src="js/date.js"></script>

	<%@ include file="fragments/footer.jsp"%>
</body>
</html>