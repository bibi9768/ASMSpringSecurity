<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Admin Page</title>
<link
	href="<c:url value="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/mdb.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/main.js" />"></script>
<script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
<script src="<c:url value="/resources/js/popper.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<style>
.map-container {
	overflow: hidden;
	padding-bottom: 56.25%;
	position: relative;
	height: 0;
}

.map-container iframe {
	left: 0;
	top: 0;
	height: 100%;
	width: 100%;
	position: absolute;
}
</style>
</head>
<body class="grey lighten-3">

	<!--Main Navigation-->
	<header>

		<!-- Navbar -->
		<nav
			class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
			<div class="container-fluid">

				<!-- Brand -->
				<a class="navbar-brand waves-effect"
					href="https://mdbootstrap.com/docs/jquery/" target="_blank"> <strong
					class="blue-text">DEMO</strong>
				</a>

				<!-- Collapse -->
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Links -->
				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<!-- Left -->
					<ul class="navbar-nav mr-auto">
						<li class="nav-item active"><a class="nav-link waves-effect"
							href="#">Home <span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link waves-effect"
							href="https://mdbootstrap.com/docs/jquery/" target="_blank">Spring</a></li>
						<li class="nav-item"><a class="nav-link waves-effect"
							href="https://mdbootstrap.com/docs/jquery/getting-started/download/"
							target="_blank">Spring MVC</a></li>
						<li class="nav-item"><a class="nav-link waves-effect"
							href="https://mdbootstrap.com/education/bootstrap/"
							target="_blank">Spring Security</a></li>
					</ul>

					<!-- Right -->
					<ul class="navbar-nav nav-flex-icons">
						<li class="nav-item"><a
							href="https://www.facebook.com/mdbootstrap"
							class="nav-link waves-effect" target="_blank"> <i
								class="fab fa-google"></i>
						</a></li>
						<li class="nav-item"><a
							href="https://twitter.com/MDBootstrap"
							class="nav-link waves-effect" target="_blank"> <i
								class="fab fa-twitter"></i>
						</a></li>
						<li class="nav-item"><a
							href="https://github.com/mdbootstrap/bootstrap-material-design"
							class="nav-link border border-light rounded waves-effect"
							target="_blank"> <i class="fab fa-facebook-f mr-2"></i>${pageContext.request.userPrincipal.name}
						</a></li>
						<li class="nav-item">
							<form action="<c:url value="/j_spring_security_logout" />"
								method="post" class="nav-link">
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" class="border border-light rounded" /> <input
									type="submit" value="Logout"
									class="btn-outline-warning waves-effec" />
						</li>
					</ul>

				</div>

			</div>
		</nav>
		<!-- Navbar -->

		<!-- Sidebar -->
		<div class="sidebar-fixed position-fixed">

			<a class="logo-wrapper waves-effect"> <img
				src="http://filip.lysyszyn.pl/img/shared-services/black-logo-demo.png"
				class="img-fluid" alt="">
			</a>

			<div class="list-group list-group-flush">
				<a href="#" class="list-group-item active waves-effect"> <i
					class="fas fa-chart-pie mr-3"></i>Dashboard
				</a> <a href="#"
					class="list-group-item list-group-item-action waves-effect"> <i
					class="fas fa-user mr-3"></i>Profile
				</a> <a href="#"
					class="list-group-item list-group-item-action waves-effect"> <i
					class="fas fa-table mr-3"></i>Tables
				</a> <a href="#"
					class="list-group-item list-group-item-action waves-effect"> <i
					class="fas fa-map mr-3"></i>Maps
				</a> <a href="#"
					class="list-group-item list-group-item-action waves-effect"> <i
					class="fas fa-money-bill-alt mr-3"></i>Orders
				</a>
			</div>

		</div>
		<!-- Sidebar -->

	</header>


</body>

</html>

</body>
</html>
