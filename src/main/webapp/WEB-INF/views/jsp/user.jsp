<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>User Page</title>
<link href="<c:url value="https://use.fontawesome.com/releases/v5.8.2/css/all.css"/>" rel="stylesheet">
 <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/css/mdb.min.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/js/main.js" />"></script>
 <script src="<c:url value="/resources/js/jquery-3.4.1.min.js" />"></script>
 <script src="<c:url value="/resources/js/popper.min.js" />"></script>
 <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
 <script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>

</head>
<body>
<!-- Navbar -->
<nav class="navbar fixed-top navbar-expand-lg navbar-dark scrolling-navbar">
  <div class="container">

    <!-- Brand -->
    <a class="navbar-brand" href="https://mdbootstrap.com/material-design-for-bootstrap/" target="_blank">
      <strong>Demo</strong>
    </a>

    <!-- Collapse -->
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Links -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <!-- Left -->
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home
            <span class="sr-only">(current)</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://mdbootstrap.com/material-design-for-bootstrap/" target="_blank">About Spring</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://mdbootstrap.com/getting-started/" target="_blank">Spring MVC</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="https://mdbootstrap.com/bootstrap-tutorial/" target="_blank">Spring Security</a>
        </li>
      </ul>

      <!-- Right -->
      <ul class="navbar-nav nav-flex-icons">
        <li class="nav-item">
          <a href="https://www.facebook.com/mdbootstrap" class="nav-link" target="_blank">
            <i class="fab fa-facebook-f"></i>
          </a>
        </li>
        <li class="nav-item">
          <a href="https://twitter.com/MDBootstrap" class="nav-link" target="_blank">
            <i class="fab fa-twitter"></i>
          </a>
        </li>
        <li class="nav-item">
          <a href="<c:url value="/admin"/>" class="nav-link border border-light rounded"
            target="_blank">
            <i class="fab mr-2"></i>Go to Admin Page
          </a>
        </li>
        <li class="nav-item">
          <form action="<c:url value="/j_spring_security_logout" />" method="post" class="nav-link">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="border border-light rounded"/>
			<input type="submit" value="Logout" class="btn-outline-warning waves-effec"/>
        </li>
        
	</form>
      </ul>

    </div>

  </div>
</nav>
<!-- Navbar -->

<!--Carousel Wrapper-->
<div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">

  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-1z" data-slide-to="1"></li>
    <li data-target="#carousel-example-1z" data-slide-to="2"></li>
  </ol>
  <!--/.Indicators-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">
      <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/93.jpg'); background-repeat: no-repeat; background-size: cover;">

        <!-- Mask & flexbox options-->
        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

          <!-- Content -->
          <div class="text-center white-text mx-5 wow fadeIn">
            <h1 class="mb-4">
              <strong>Welcome</strong>
            </h1>

            <h2>
              <strong>${pageContext.request.userPrincipal.name}</strong>
            </h2>

            <p class="mb-4 d-none d-md-block">
              <strong>Demo Sring Security</strong>
            </p>

            <a target="_blank" href="https://mdbootstrap.com/bootstrap-tutorial/" class="btn btn-outline-white btn-lg">Start
              <i class="fas fa-graduation-cap ml-2"></i>
            </a>
          </div>
          <!-- Content -->

        </div>
        <!-- Mask & flexbox options-->

      </div>
    </div>
    <!--/First slide-->

    <!--Second slide-->
    <div class="carousel-item">
      <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/94.jpg'); background-repeat: no-repeat; background-size: cover;">

        <!-- Mask & flexbox options-->
        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

          <!-- Content -->
          <div class="text-center white-text mx-5 wow fadeIn">
            <h1 class="mb-4">
              <strong>Welcome</strong>
            </h1>

            <h2>
              <strong>${pageContext.request.userPrincipal.name}</strong>
            </h2>

            <p class="mb-4 d-none d-md-block">
              <strong>Demo Sring Security</strong>
            </p>

            <a target="_blank" href="https://mdbootstrap.com/bootstrap-tutorial/" class="btn btn-outline-white btn-lg">Start
              <i class="fas fa-graduation-cap ml-2"></i>
            </a>
          </div>
          <!-- Content -->

        </div>
        <!-- Mask & flexbox options-->

      </div>
    </div>
    <!--/Second slide-->

    <!--Third slide-->
    <div class="carousel-item">
      <div class="view" style="background-image: url('https://mdbootstrap.com/img/Photos/Others/images/92.jpg'); background-repeat: no-repeat; background-size: cover;">

        <!-- Mask & flexbox options-->
        <div class="mask rgba-black-light d-flex justify-content-center align-items-center">

          <!-- Content -->
          <div class="text-center white-text mx-5 wow fadeIn">
            <h1 class="mb-4">
              <strong>Welcome</strong>
            </h1>

            <h2>
              <strong>${pageContext.request.userPrincipal.name}</strong>
            </h2>

            <p class="mb-4 d-none d-md-block">
              <strong>Demo Sring Security</strong>
            </p>

            <a target="_blank" href="https://mdbootstrap.com/bootstrap-tutorial/" class="btn btn-outline-white btn-lg">Start
              <i class="fas fa-graduation-cap ml-2"></i>
            </a>
          </div>
          <!-- Content -->

        </div>
        <!-- Mask & flexbox options-->

      </div>
    </div>
    <!--/Third slide-->

  </div>
  <!--/.Slides-->

  <!--Controls-->
  <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->

</div>
<!--/.Carousel Wrapper-->

<!--Main layout-->
<main>
  <div class="container">

    <!--Section: Main info-->
    <section class="mt-5 wow fadeIn">

      <!--Grid row-->
      <div class="row">

        <!--Grid column-->
        <div class="col-md-6 mb-4">

          <img src="https://mdbootstrap.com/img/Marketing/mdb-press-pack/mdb-main.jpg" class="img-fluid z-depth-1-half"
            alt="">

        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-md-6 mb-4">

          <!-- Main heading -->
          <h3 class="h3 mb-3">Demo Spring Security</h3>
          <p>This tutorial created with Spring(
            <strong>Security</strong> )</p>
          <p>Read details below to learn more about Spring Security.</p>
          <!-- Main heading -->

          <hr>

          <p>
            <strong>Lorem ipsum</strong> dolor sit amet, consectetur adipiscing elit,
            <strong>sed do</strong> eiusmod tempor incididunt ut
            <strong>labore et</strong> dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong>
          </p>

          <!-- CTA -->
          <a target="_blank" href="https://mdbootstrap.com/getting-started/" class="btn btn-indigo btn-md">Download
            <i class="fas fa-download ml-1"></i>
          </a>
          <a target="_blank" href="https://mdbootstrap.com/components/" class="btn btn-indigo btn-md">Live demo
            <i class="fas fa-image ml-1"></i>
          </a>

        </div>
        <!--Grid column-->

      </div>
      <!--Grid row-->

    </section>
    <!--Section: Main info-->

    <hr class="my-5">

    <!--Section: Main features & Quick Start-->
 
</body>
</html>
