<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<%-- <jsp:include page="header.jsp"/> --%>
<title>Register</title>

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


</head>
<body class="col-md-4 col-md-offset-3 container">
	<form:form style="color: #757575;" class="text-center border border-light p-5" name='register' action="saveUser" modelAttribute="memberdata" method='POST'>
		<p class="h4 mb-4">Register</p>
		<h2>${message}</h2>
		<form:input  type='text' path="username" name='regusername' 
			class="form-control mb-4" placeholder="User name" />
		<form:input type='text' path="email" name='regemail' 
			class="form-control mb-4" placeholder="Email"/>
		<form:input  type='password' path="password" name='repassword' 
			class="form-control mb-4" placeholder="Password"/>
		<input type='password' name='regrepassword' 
			class="form-control mb-4"  placeholder="re-Password"/>
		<button class="btn btn-success btn-block my-4" name="submit" type="submit">Register</button>
		
		<a href="login" class="float-left">Go to Login</a>
	</form:form>
</body>
</html>