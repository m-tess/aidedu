<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/colorpicker.css" />
<link rel="stylesheet" href="css/datepicker.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link rel="stylesheet" href="css/bootstrap-wysihtml5.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="img/Logo1.jpeg" />
<script type="text/javascript">
	function confirmer(url) {
		var rep = confirm("Etes-vous sûr de vouloir éditer ces informations ?");
		if (rep == true) {
			document.location(url);
		}
	}
</script>

<title>AidEdu | Institution</title>
</head>

<body>
	<!--Header-part-->
	<div id="header">
		<h1>
			<a href="dashboard.html">AidEdu Admin</a>
		</h1>
	</div>
	<!--close-Header-part-->

		<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li class=""><a title="" href=""> <span class="text">${welcome}</span></a></li>
    <li class=""><a title="" href="EspaceInstitution.jsp"><i class="icon icon-share-alt"></i> <span class="text">Sortir</span></a></li>
  </ul>
</div>
	<!--close-top-Header-menu-->

	<!--start-top-serch-->
	<div id="search">
		<form action="login2" method="post">
			<!-- Recherche éleve avec mot cle -->
			<span class="pull-left"><input type="text" name="motCle"
				value="${model.motCle}" /></span> <input type="submit"
				class="btn btn-success" value="Rechercher" name="action" />
		</form>
	</div>
	<!--close-top-serch-->

	

	<!--sidebar-menu-->
	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i>
			Tableau de bord</a>
		<ul>
					<li><a href="Institution.jsp"><i
							class="icon-search icon-white"></i> <span>Recherche</span></a></li>
					<!-- Par numId -->
					<li class="active"><a href="Ajout.jsp"><i class="icon-pencil"></i> <span>Ajout</span></a></li>
					<!-- Ajouter un eleve-->
					<li><a href="Parcours.jsp"><i class="icon icon-file"></i>
							<span>Parcours académique</span></a></li>
					<!-- Par numId -->
					<li><a href="Frequentation.jsp"><i class="icon icon-file"></i><span>Etablissements fréquentés</span></a></li>
					<li><a href="Notes.jsp"><i class="icon-pencil"></i>
							<span>Saisie de notes</span></a></li>
					<!-- Ajouter des notes-->
					<li><a href="InscriptionEleve.jsp"><i
							class="icon-pencil"></i> <span>Inscription</span></a></li>
					<!-- Ajouter un eleve dans l'institution-->
				
		</ul>
	</div>
	<!--End-sidebar-menu-->
	
	<div id="content">
		<div id="content-header">
			<div id="breadcrumb">
				<a href="#" title="Go to Home" class="tip-bottom"><i
					class="icon-home"></i>Home</a><a href="#" class="tip-bottom">Institution</a><a
					href="#" class="current">Élève</a>
			</div>
		</div>
		<hr>
		<div class="container-fluid">
			<h3>Ajouter un nouvel élève :</h3>
			${model.erreurs}
			<hr>
			<div class="row-fluid">
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-align-justify"></i>
							</span>
							<h4>Informations personnelles :</h4>
						</div>
						<!-- <input type="text" value="${model.mode}" >-->
						<div class="widget-content nopadding">
							<form action="login2" method="post" enctype="multipart/form-data"
								class="form-horizontal">
								
								<div class="control-group">
									<label class="control-label">Numéro d'identité national :</label>
									<div class="controls">
										<input type="text" name="numIdentite" minlength="9" maxlength="9" required placeholder="NIN Élève" class="span8 mask text"
											value="${model.eleve.numIdentite}"  />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Nom :</label>
									<div class="controls">
										<input type="text" name="nomEleve" maxlength="40" placeholder="Nom" class="span11" value="${model.eleve.nomEleve}"  />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Prénom :</label>
									<div class="controls">
										<input type="text" name="prenomEleve" maxlength="50" placeholder="Prenom" class="span11" value="${model.eleve.prenomEleve}"
											 />
									</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Date de
										naissance</label>
									<div class="controls">
										<input type="text" id="mask-date" placeholder="00/00/0000" class="span8 mask text"
											name="dateNaissanceEleve"
											value="${model.eleve.dateNaissanceEleve}" >
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Sexe :</label>
									<div class="controls">
										<select name="sexeEleve" class="span8 mask text">
											<option>M</option>
											<option>F</option>
										</select>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Nationalité :</label>
									<div class="controls">
										<input type="text" class="span11" placeholder="Nationalite" name="nationaliteEleve" maxlength="50"
											value="${model.eleve.nationaliteEleve}"  />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Adresse électronique :</label>
									<div class="controls">
										<input type="email" class="span11" placeholder="email" name="emailEleve" maxlength="50"
											value="${model.eleve.emailEleve}" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Acte de naissance : </label>
									<div class="controls">
										<input type="file" name="fichier1"  accept=".pdf"
											value="${model.eleve.fichier1}"  />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Passeport : </label>
									<div class="controls">
										<input type="file" name="fichier2" accept=".pdf"
											value="${model.eleve.fichier2}" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Statut :</label>
									<div class="controls">
										<select name="valid" class="span8 mask text" >
											<option>true</option>
											<option>false</option>
										</select>
									</div>
								</div>
								<div class="form-actions">
									<button type="submit" class="btn btn-success" name="action"
										value="Sauvegarder">Sauvegarder</button>
									<input type="hidden" name="numId" value="${c.numIdentite}" >
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<table border="1" width="95%">
					<tr class="bg_lb">
						<th>Numéro d'Identité</th>
						<th>Nom</th>
						<th>Prénom</th>
						<th>Sexe</th>
						<th>Date de naissance</th>
						<th>Nationalité</th>
						<th>Adresse électronique</th>
						<th>Acte de naissance</th>
						<th>Passeport</th>
						<th>Statut</th>
					</tr>
					<c:forEach items="${model.eleves}" var="c">
						<tr>
							<td>${c.numIdentite}</td>
							<td>${c.nomEleve}</td>
							<td>${c.prenomEleve}</td>
							<td>${c.sexeEleve}</td>
							<td>${c.dateNaissanceEleve}</td>
							<td>${c.nationaliteEleve}</td>
							<td>${c.emailEleve}</td>
							<td>${c.fichier1}</td>
							<td>${c.fichier2}</td>
							<td>${c.valid}</td>
							<!-- <td><a
								href="doPost?action=Editer&numId=${c.numIdentite}"><i
									class="icon-pencil"></i> Editer</a></td>-->
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<!--End main-container-part-->

	<!--Footer-part-->

	<div class="row-fluid">
		<div id="footer" class="span12">
			<script type="text/javascript">let year=new Date().getFullYear(); console.log(year);</script> &copy; MP Admin. Tous droits r&eacute;serv&eacute;s &agrave;
			<a href="#">aTess</a>
		</div>
	</div>
	<!--end-Footer-part-->

	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/jquery.ui.custom.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/bootstrap-colorpicker.js" type="text/javascript"></script>
	<script src="js/bootstrap-datepicker.js" type="text/javascript"></script>
	<script src="js/jquery.toggle.buttons.js" type="text/javascript"></script>
	<script src="js/masked.js" type="text/javascript"></script>
	<script src="js/jquery.uniform.js" type="text/javascript"></script>
	<script src="js/select2.min.js" type="text/javascript"></script>
	<script src="js/matrix.js" type="text/javascript"></script>
	<script src="js/matrix.form_common.js" type="text/javascript"></script>
	<script src="js/wysihtml5-0.3.0.js" type="text/javascript"></script>
	<script src="js/jquery.peity.min.js" type="text/javascript"></script>
	<script src="js/bootstrap-wysihtml5.js" type="text/javascript"></script>
	<script type="text/javascript">
		$('.textarea_editor').wysihtml5();
	</script>
</body>
</html>