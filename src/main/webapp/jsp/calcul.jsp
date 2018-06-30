<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE htm>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="resources/css/lib/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="resources/css/helper.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
</head>
<body>

	<div class="col-lg-3">
		<div class="card">
			<div class="card-body">
				<h4 class="card-title">Calcul Web avec Maven</h4>
				<h6 class="card-subtitle"></h6>
				<form class="form p-t-20" method="post" action="calcul">

					<div class="form-group">
						<label for="exampleInputEmail1">A</label>
						<div class="input-group">
							<div class="input-group-addon">
								<i class="ti-email"></i>
							</div>
							<input type="text" class="form-control" name="a" id="exampleInputEmail1"
								placeholder="Entrer un nombre a">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd1">B</label>
						<div class="input-group">
							<div class="input-group-addon">
								<i class="ti-lock"></i>
							</div>
							<input type="text" class="form-control" name="b" id="pwd1"
								placeholder="Entrer un nombre b">
						</div>
					</div>
					<div class="form-group">
						<label for="pwd2"></label>
						<div class="input-group">
							<div class="input-group-addon">
								<i class="ti-lock"></i>
							</div>
							<label for="pwd">Résultat : </label> ${rst }
						</div>
					</div>
					

					<button type="submit"
						class="btn btn-success waves-effect waves-light m-r-10" name="action" value="Somme">Somme</button>
					<button type="submit"
						class="btn btn-inverse waves-effect waves-light" name="action" value="Produit">Produit</button>
				</form>
			</div>
		</div>
	</div>
	<script src="resources/js/lib/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="resources/js/lib/bootstrap/js/popper.min.js"></script>
	<script src="resources/js/lib/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="resources/js/jquery.slimscroll.js"></script>
	<!--Menu sidebar -->
	<script src="resources/js/sidebarmenu.js"></script>
	<!--stickey kit -->
	<script src="resources/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<!--Custom JavaScript -->
	<script src="resources/js/custom.min.js"></script>
</body>
</html>