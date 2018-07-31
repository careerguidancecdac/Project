<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Home Page</title>
</head>
<body>
	<h1>HOME PAGE</h1>
	<h3>${sessionScope.msg}</h3>
	<h3>${sessionScope.admin_obj}</h3>
	
	<form method="get" action="course_stat">
		<input type="submit" value="View Course Statistics">
	</form>
	
	<form method="get" action="company_details">
		<input type="submit" value="View Company Details">
	</form>
	
	<form method="get" action="posted_jobs">
		<input type="submit" value="View Posted Job Details">
	</form>
	
	<form method="get" action="student_details">
		<input type="submit" value="View Student Details">
	</form>
	
	<form method="get" action="get_coursedetails">
		<input type="submit" value="View Course Details">
	</form>
	
	<form method="post" action="add_newcourse">
		<input type="submit" value="Add New Course">
	</form>
	
	
	
</body>
</html>