<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.5.3/js/bootstrapValidator.js"></script>
  <style type="text/css">
	fieldset {
		font-family: verdana, arial, helvetica, sans-serif; 
		color: black;
		
			}
	legend {
		margin-top: 50px;
		border-color: black}
	 .mywell{
		   background:yellow; 
		 /* background:linear-gradient(to right,rgba(255,0,0,0),rgba(255,0,0,1)); */
	} 
	
	
	</style>
	
</head>
<body style="background-color: cyan">
		<div class="container" style=" background:yellow; margin:18%">
		<fieldset>
		<legend>Login</legend>
		<form:form modelAttribute="student" cssClass="well mywell form-horizontal" action="login" method="POST">
			<div style="color: red">${errormessage}</div>
			<div class="form-group">
  			<label class="col-md-4 control-label">Email</label>  
  			<div class="col-md-4 inputGroupContainer">
  				<div class="input-group">
  				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  				<form:input path="email" cssClass="form-control"/>
    			</div>
 		 	</div>
			</div>
			<div class="form-group">
  			<label class="col-md-4 control-label">Password</label>  
  			<div class="col-md-4 inputGroupContainer">
  				<div class="input-group">
  				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  				<form:password path="password" cssClass="form-control"/>
    			</div>
 		 	</div>
 		 	</div>
 		 	<div class="form-group">
  			<label class="col-md-4 control-label"></label>
  			<div class="col-md-4">
    		<button type="submit" class="btn btn-success" >Login<span class="glyphicon glyphicon-send"></span></button>
  			</div>
  			</div>
		</form:form>
		</div>
		</fieldset>	
</body>
</html>