<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html class="no-js" lang="">

<head>
<meta charset="utf-8" />
<link rel='stylesheet' href='<c:url value="/resources/css/style.css" />'
	type='text/css' media='all' />
<link rel="icon" type="image/ico"
	href='<c:url value="/resources/assets/images/favicon.ico"/>' />
<title>Lordy Deck - Login</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/js/vendor/bootstrap/bootstrap.min.css"/>' />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/js/vendor/sweetalert/sweetalert2.css"/>' />
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/vendor/animsition.min.css"/>' />
<!--  Fonts and icons -->
<!-- CSS Files -->
<link rel="stylesheet"
	href='<c:url value="/resources/assets/css/main.css"/>' />

</head>

<body id="falcon" class="authentication">
	<!-- Application Content -->
	<div class="wrapper">
		<div class="header header-filter"
			style="background-image: url(<c:url value='/resources/assets/images/login-bg.jpg'/>); background-size: cover; background-position: top center;">
			<div class="container">
				<div class="row">
					<div
						class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 text-center">
						<div class="card card-signup">
							<form class="form" id="frmlogin">
								<div class="header header-primary text-center">
									<h4>Sign in</h4>

								</div>
								<h3 class="mt-0">Lory Deck</h3>

								<div class="content">
									<div class="form-group">
										<input type="text" id="userid" placeholder="Id"
											class="form-control" data-parsley-trigger="change"
											required="" data-parsley-required
											data-parsley-required="true">
										<ul class="parsley-errors-list"></ul>
										<span class="material-input"></span>
									</div>
									<div class="form-group">
										<input type="password" id="pass" placeholder="password"
											class="form-control" data-parsley-trigger="change"
											required="" data-parsley-required
											data-parsley-required="true">
										<ul class="parsley-errors-list"></ul>
										<span class="material-input"></span>
									</div>

								</div>
								<div class="footer text-center">
									<button type="submit" id = "login" class="btn btn-info btn-raised">Login</button>
								</div>
								<a href="" class="btn btn-wd">Forgot Password?</a>

							</form>
							<div class="loadingDiv" style="display: none;">
								<div>
									<h7>Please wait...</h7>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer"> </footer>
		</div>

	</div>
	<!--/ Application Content -->
	<!--  Vendor JavaScripts -->
	<script
		src='<c:url value="/resources/assets/js/vendor/jquery/jquery-3.1.0.min.js" />'></script>
	<script
		src='<c:url value="/resources/assets/bundles/sweetalertscripts.bundle.js" />'></script>
	<script
		src='<c:url value="/resources/assets/bundles/libscripts.bundle.js" />'></script>
	<script
		src='<c:url value="/resources/assets/bundles/vendorscripts.bundle.js" />'></script>
	<script
		src='<c:url value="/resources/assets/bundles/mainscripts.bundle.js" />'></script>
	<script
		src='<c:url value="/resources/assets/js/vendor/parsley/parsley.min.js" />'></script>
	<script src='<c:url value="/resources/assets/js/jquerysession.js" />'></script>
	

	<script>
	

	

		$('#frmlogin').parsley();
		$('#frmlogin')
				.submit(
						function(e) {

							var pwd = $('#pass').val();
							var uid = $('#userid').val();
							e.preventDefault();
							window.location.href = "index";
							

						});
	</script>
	
</body>
</html>