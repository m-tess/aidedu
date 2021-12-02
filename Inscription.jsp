<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="affaire.*" import="web.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="css/jquery.gritter.css" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="img/Logo1.jpeg" />

<title>MP | Administration</title>
</head>

<body>
	<!--Header-part-->
	<div id="header">
		<h1>
			<a href="dashboard.html">MP Admin</a>
		</h1>
	</div>
	<!--close-Header-part-->
	
	<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li class=""><a title="" href=""> <span class="text">${welcom} ${welcome}</span></a></li>
    <li class=""><a title="" href="EspacePersonnel.jsp"><i class="icon icon-share-alt"></i> <span class="text">Sortir</span></a></li>
  </ul>
</div>
	<!--close-top-Header-menu-->

	<!--start-top-serch-->
	<div id="search">
		<form action="login3" method="post">
			<!-- Recherche éleve avec mot cle -->
			<span class="pull-left"><input type="text" name="motCle"
				value="${model.motCle}" /></span> <input type="submit"
				class="btn btn-success" value="Rechercher" name="action" />
		</form>
	</div>
	<!--close-top-serch-->

	<!--sidebar-menu-->
	<div id="sidebar">
		<ul>
			<li><a href="Personnel.jsp"><i
					class="icon-dashboard"></i> <span>Tableau de bord</span></a></li>
			<li class="submenu active"><a href="#"><i class="icon icon-th-list"></i><span>Elève</span><span
					class="label label-important">3</span></a>
				<ul>
					<li><a href="RecherchEl.jsp"><i
							class="icon-search icon-white"></i> <span>Recherche</span></a></li>
					<!-- Par numId -->
					<!-- Par mot cle -->
					<li><a href="ParcoursAcad.jsp"><i class="icon icon-file"></i>
							<span>Parcours académique</span></a></li>
					<!-- Par numId -->
					<li class="active"><a href="Inscription.jsp"><i class="icon icon-file"></i>
							<span>Etablissements fréquentés</span></a></li>
				</ul></li>
			<li class="submenu"><a href="#"><i class="icon icon-home"></i><span>Institution</span><span
					class="label label-important">4</span></a>
				<ul>
					<li><a href="RecherchInstit.jsp"><i
							class="icon-search icon-white"></i> <span>Recherche</span></a></li>
					<li><a href="AjoutInstit.jsp"><i class="icon-pencil"></i>
							<span>Ajout</span></a></li>
					<!-- Ajouter une institution-->
					<li><a href="Localisation.jsp"><i
							class="icon-pencil"></i> <span>Localisation</span></a></li>
					<!-- Localiser une institution-->
					<li><a href="ListInstitut.jsp"><i class="icon icon-file"></i>
							<span>Liste des institutions</span></a></li>
				</ul></li>
		</ul>
	</div>
	<!--End-sidebar-menu-->

	<!--main-container-part-->
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb">
				<a href="#" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i>Home</a><a href="#" class="tip-bottom">Personnel</a><a
					href="#" class="current">El&egrave;ve</a>
			</div><hr>
			
		</div>
		<div class="container-fluid">
		<h3>Recherche d'inscriptions d'un élève :</h3>
			${model.erreurs}
			<hr>
			<div class="row-fluid">
				<form action="login3" method="post">
					<!-- Recherche éleve avec Numéro Identité -->
					<span class="pull-left"><input type="text"
						name="numId" placeholder="NIN Elève" minlength="9" maxlength="9" value="${model.numId}" /></span>
					<input type="submit" class="btn btn-success" value="Voir"
						name="action" />
				</form>
			</div>
			<div class="row-fluid">
				<table style="border:1px; width:95%;">
					<tr class="bg_lb">
					    <th>ID Inscription</th>
						<th>Date Inscription</th>
						<th>Nom Institution</th>
						<th>Nom de la section communale</th>
						<th>Nom du departement</th>
					</tr>
					<c:forEach items="${model.eleveinsc}" var="c">
						<tr>
						    <td>${c.idEleveSInscrire}</td>
							<td>${c.dateInscription}</td>
							<td>${c.nomInstitut}</td>
							<td>${c.nomSectionCommunale}</td>
							<td>${c.nomDepartement}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

	<!--end-main-container-part-->

	<!--Footer-part-->

	<div class="row-fluid">
		<div id="footer" class="span12">
			<script type="text/javascript">let year=new Date().getFullYear(); console.log(year);</script> &copy; MP Admin. Tous droits r&eacute;serv&eacute;s &agrave;
			<a href="#">aTess</a>
		</div>
	</div>
	<!--end-Footer-part-->

	<script src="js/excanvas.min.js" type="text/javascript"></script>
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/jquery.ui.custom.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/jquery.flot.min.js" type="text/javascript"></script>
	<script src="js/jquery.flot.resize.min.js" type="text/javascript"></script>
	<script src="js/jquery.peity.min.js" type="text/javascript"></script>
	<script src="js/fullcalendar.min.js" type="text/javascript"></script>
	<script src="js/matrix.js" type="text/javascript"></script>
	<script src="js/matrix.dashboard.js" type="text/javascript"></script>
	<script src="js/jquery.gritter.min.js" type="text/javascript"></script>
	<script src="js/matrix.interface.js" type="text/javascript"></script>
	<script src="js/matrix.chat.js" type="text/javascript"></script>
	<script src="js/jquery.validate.js" type="text/javascript"></script>
	<script src="js/matrix.form_validation.js" type="text/javascript"></script>
	<script src="js/jquery.wizard.js" type="text/javascript"></script>
	<script src="js/jquery.uniform.js" type="text/javascript"></script>
	<script src="js/select2.min.js" type="text/javascript"></script>
	<script src="js/matrix.popover.js" type="text/javascript"></script>
	<script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="js/matrix.tables.js" type="text/javascript"></script>

	<script type="text/javascript">
		// This function is called from the pop-up menus to transfer to
		// a different page. Ignore if the value returned is a null string:
		function goPage(newURL) {

			// if url is empty, skip the menu dividers and reset the menu selection to default
			if (newURL != "") {

				// if url is "-", it is this page -- reset the menu:
				if (newURL == "-") {
					resetMenu();
				}
				// else, send page to designated URL            
				else {
					document.location.href = newURL;
				}
			}
		}

		// resets the menu selection upon entry to this page:
		function resetMenu() {
			document.gomenu.selector.selectedIndex = 2;
		}
	</script>
</body>
</html>
