<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<link
	href="<c:url value="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/mdb.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
<script src="<c:url value="/resources/js/popper.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<title>login</title>
</head>
<body class="col-md-4 col-md-offset-3 container">
	<form:form style="color: #757575;" modelAttribute="data"  action="passlogin" class="text-center border border-light p-5" name='loginForm'  method='POST'>
		<p class="h4 mb-4">Sign in</p>
		<h2>${message}</h2>
		<form:input type='text' path="username" name='username' id="materialLoginFormEmail"
			class="form-control mb-4" placeholder="User"/>
		<form:input type='password' path="password" name='password' id="materialLoginFormEmail"
			class="form-control mb-4" placeholder="Password"/>
		<div class="d-flex justify-content-around">
			<div>
				<!-- Remember me -->
				<div class="custom-control custom-checkbox">
					<input type="checkbox" name="remember-me"
						class="custom-control-input" id="defaultLoginFormRemember">
					<label class="custom-control-label" for="defaultLoginFormRemember">Remember me</label>
				</div>
			</div>
			<div>
				<!-- Forgot password -->
				<a href="">Forgot password?</a>
			</div>
		</div>
		<button class="btn btn-success btn-block my-4" name="submit" type="submit">Sign in</button>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		<p>
			Not a member? <a href="/dangky">Register</a>
		</p>
	</form:form>
</body>
</html>