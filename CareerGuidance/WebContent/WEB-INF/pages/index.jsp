<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html> 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>UnBerozgaar</title>
</head>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
	  
  }
</style>
<body style="background:linear-gradient(to right,rgba(255,0,0,0),rgba(255,0,0,1))">
	<nav class="navbar navbar-default">
  <div class="container-fluid"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="#">Brand</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->  
    
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Page 1-1</a></li>
            <li><a href="#">Page 1-2</a></li>
            <li><a href="#">Page 1-3</a></li>
          </ul>
        </li>
        <li><a href="#page2">About Us</a></li>
        <li><a href="#Courses">Courses</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

      <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>

<!-- HEADER -->
<header>
  <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value='/images/online.jpg' />" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Our Motive</h3>
          <p>To Give Job To Students.</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='/images/home.jpg' />" alt="Chania" width="460" height="345">
        <div class="carousel-caption">
          <h3>Our Motive</h3>
          <p>TO Give Proper Guidance To Students.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value='/images/Online.png' />" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
          <h3>Our Motive</h3>
          <p>To Give Job To Students.</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='/images/img.jpg' />" alt="Flower" width="460" height="345">
        <div class="carousel-caption">
         <h3>Our Motive</h3>
          <p>TO Give Proper Guidance To Students.</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

</header>
<!-- / HEADER --> 

<!--  SECTION-1 -->
<section>
  <div class="row">
    <div class="col-lg-12 page-header text-center" id="page2">
      <h2>ABOUT US</h2>
    </div>
  </div>
  <div class="container ">
    <div class="row">
      <div class="col-lg-4 col-sm-12 text-center"> <img class="img-circle" alt="140x140" style="width: 140px; height: 140px;" src="images/amol.jpg" data-holder-rendered="true">
        <h3>Amol Datar</h3>
        <h5><b>Team Lead</b></h5>
        <p>Strive for Progress,Not Perfection</p>
      </div>
      <div class="col-lg-4 col-sm-12 text-center"><img class="img-circle" alt="140x140" style="width: 140px; height: 140px;" src="images/mayuresh.jpg" data-holder-rendered="true">
        <h3>Mayuresh Kulkarni</h3>
        <h5><b>UI Developer</b></h5>
        <p>There are no shortcuts to any place worth going</p>
      </div>
      <div class="col-lg-4 col-sm-12 text-center"><img class="img-circle" alt="140x140" style="width: 140px; height: 140px;" src="images/saurabh.jpg" data-holder-rendered="true">
        <h3>Saurabh Khendkar</h3>
        <h5><b>Backend Developer</b></h5>
        <p>Failure is the opportunity to begin again more intelligently</p>
      </div>
      <div class="col-lg-4 col-sm-12 text-center"><img class="img-circle" alt="140x140" style="width: 140px; height: 140px;" src="images/pritesh.JPG" data-holder-rendered="true">
        <h3>Pritesh Kankaria</h3>
        <h5><b>Front End Developer</b></h5>
        <p>Don't let what you cannot do interfere with what you can do</p>
      </div>
      <div class="col-lg-4 col-sm-12 text-center"><img class="img-circle" alt="140x140" style="width: 140px; height: 140px;" src="images/adikul.JPG" data-holder-rendered="true">
        <h3>Aditya Kulkarni</h3>
        <h5><b>UI Developer</b></h5>
        <p>It always seems impossible until it's done</p>
      </div>
      <div class="col-lg-4 col-sm-12 text-center"><img class="img-circle" alt="140x140" style="width: 140px; height: 140px;" src="images/arun.jpg" data-holder-rendered="true">
        <h3>Arun Jain</h3>
        <h5><b>Backend Developer</b></h5>
        <p>Start where you are.Use what you have.Do what you can</p>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12 page-header text-center">
        <h2>Our Courses</h2>
      </div>
    </div>
    <div class="row">
    	<c:forEach items="${courses}" var="course">
    		<div class="col-6 col-lg-6">
        	<blockquote>
          		<p>${course.coursename}</p>
          	<small>${course.description}</small> </blockquote>
      		</div>
    	</c:forEach>
    
      <%-- <div class="col-6 col-lg-6">
        <blockquote>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <small>Someone famous in <cite title="Source Title">Source Title</cite></small> </blockquote>
      </div>
      <div class="col-6 col-lg-6">
        <blockquote>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <small>Someone famous in <cite title="Source Title">Source Title</cite></small> </blockquote>
      </div> --%>
    </div>
    
  </div>
  <div class="jumbotron">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-md-9 col-lg-9">
          <p class="lead">If you have no clue of what to do after graduation,you have landed at correct page.Follow us and Set your future in IT</p>
        </div>
        <div class=" text-center col-sm-6 col-lg-3 col-sm-offset-3 col-md-3 col-xs-offset-4 col-xs-5 col-lg-offset-0"> 
        	<a class="btn  btn-block btn-lg btn-success" href="#" title="">Sign up now!</a> 
        </div>
      </div>
    </div>
  </div>
  
  <!-- /container -->
  
  <div class="container">
    <div class="row">
      <div class="col-lg-12 page-header text-center">
        <h2>OUR SERVICES</h2>
      </div>
    </div>
    <div class="row">
      <div class="col-xs-6 col-lg-6">
        <h3>E-Learning</h3>
        <p> <i class="icon-desktop " ></i>We envision a world where anyone, anywhere can transform their life by accessing the world’s best learning experience</p>
        <p><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#learndetails">View Details »</button></p>
      </div>
       

  <!-- Modal -->
  <div class="modal fade" id="learndetails" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">E-learning Details</h4>
        </div>
        <div class="modal-body">
          <img src="<c:url value='images/elearn.png'/>" height="750px" width="550px"/>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
      <div class="col-xs-6 col-lg-6">
        <h3>Feature Description</h3>
        <p> <i class="icon-desktop "></i> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate, illo, libero esse assumenda culpa consequatur exercitationem beatae odio praesentium nihil iste ipsum reiciendis pariatur. Recusandae, reiciendis quidem eaque aut ab. </p>
        <p><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#companydetails">View Details »</button></p>
      </div>
      <!-- Modal -->
  <div class="modal fade" id="companydetails" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Company Details</h4>
        </div>
        <div class="modal-body">
        	
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
    </div>
  </div>
  <!-- / CONTAINER--> 
</section>
<div class="well"> </div>

<!-- FOOTER -->
<div class="container">
  <div class="row">
    <div class="col-lg-offset-3 col-xs-12 col-lg-6">
      <div class="jumbotron">
        <div class="row text-center">
          <div class="text-center col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <h2>Give feedback about us!</h2>
          </div>
          <div class="text-center col-lg-12"> 
            <!-- CONTACT FORM https://github.com/jonmbake/bootstrap3-contact-form -->
            <form role="form" id="feedbackForm" class="text-center">
              <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                <span class="help-block" style="display: none;">Please enter your name.</span></div>
              <div class="form-group">
                <label for="email">E-Mail</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email Address">
                <span class="help-block" style="display: none;">Please enter a valid e-mail address.</span></div>
              <div class="form-group">
                <label for="message">Message</label>
                <textarea rows="10" cols="100" class="form-control" id="message" name="message" placeholder="Message"></textarea>
                <span class="help-block" style="display: none;">Please enter a message.</span></div>
              <span class="help-block" style="display: none;">Please enter a the security code.</span>
              <button type="submit" id="feedbackSubmit" class="btn btn-primary btn-lg" style=" margin-top: 10px;"> Send</button>
            </form>
            <!-- END CONTACT FORM --> 
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<footer class="text-center">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <p>Copyright © MyWebsite. All rights reserved.</p>
      </div>
    </div>
  </div>
</footer>
<!-- / FOOTER --> 
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
<script src="js/jquery-1.11.3.min.js"></script> 
<!-- Include all compiled plugins (below), or include individual files as needed --> 
<script src="js/bootstrap.js"></script>
</body>
</html>