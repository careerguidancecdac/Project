<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Company Details</title>
<script>
		$(document).ready(function()
		{
		  $("#searchbyall").on("keyup", function() 
		  {
		    var value = $(this).val().toLowerCase();
		    $("#myTable tr").filter(function() 
		    {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});

		$(document).ready(function()
		{
		  $("#searchbycompid").on("keyup", function() 
		  {
		    var value = $(this).val();
		    $("table tr").each(function(index) 
		    {
		    	if(index!=0)
		    	{
		    		$row=$(this);
		    		var id=$row.find("td:first").text();
		    		if(id.indexOf(value)!=0)
		    		{
		    			$(this).hide();
		    		}
		    		else
		    		{
		    			$(this).show();
		    		}
		    	}
		    });
		  });
		});	

		$(document).ready(function()
		{
		  $("#searchbycompregno").on("keyup", function() 
		  {
		    var value = $(this).val();
		    $("table tr").each(function(index) 
		   {
		    	if(index!=0)
		    	{
		    		$row=$(this);
		    		var id=$row.find("td:nth-child(2)").text();
		    		if(id.indexOf(value)!=0)
		    		{
		    			$(this).hide();
		    		}
		    		else
		    		{
		    			$(this).show();
		    		}
		    	}
		    });
		  });
		});	

		$(document).ready(function()
		{
		  $("#searchbycity").on("keyup", function() 
		  {
		    var value = $(this).val();
		    $("table tr").each(function(index) 
		    {
			  	if(index!=0)
			   	{
			   		$row=$(this);
			   		var id=$row.find("td:nth-child(14)").text();
			   		if(id.indexOf(value)!=0)
			   		{
			   			$(this).hide();
			   		}
			   		else
			   		{
			   			$(this).show();
			   		}
			   	}
			});
		  });
		});	
		
		$(document).ready(function()
		{
		  $("#searchbycompanyname").on("keyup", function() 
		  {
		    var value = $(this).val();
		    $("table tr").each(function(index) 
		    {
		    	if(index!=0)
			   	{
			   		$row=$(this);
			   		var id=$row.find("td:nth-child(3)").text();
			   		if(id.indexOf(value)!=0)
			   		{
			   			$(this).hide();
			   		}
			   		else
			   		{
			   			$(this).show();
			   		}
			   	}
		    });
		  });
		});	

		$(document).ready(function()
		{
		  $("#searchbyrecruitertype").on("keyup", function() 
		  {
		    var value = $(this).val();
		    $("table tr").each(function(index) 
		    {
		    	if(index!=0)
			   	{
			   		$row=$(this);
			   		var id=$row.find("td:nth-child(21)").text();
			   		if(id.indexOf(value)!=0)
			   		{
			   			$(this).hide();
			   		}
			   		else
			   		{
			   			$(this).show();
			   		}
			   	}
		    });
		  });
		});		
		
</script>
</head>

<body>
	<h1>#NUSTACOMPANYDETAILS</h1>
	<br>
	<div class="container mt-3">	
  	 	<div class="form-group row">
  			<div class="col-xs-1" style="width: 150px">
    			<input class="form-control" type="text" id="searchbyall" placeholder="Search By All">
	  		</div>
  			<div class="col-xs-2" style="width: 210px">
	    		<input class="form-control" type="text" id="searchbycompid" placeholder="Search By Company ID" >
  			</div>
  			<div class="col-xs-3" style="width: 260px">
     			<input class="form-control" type="text" id="searchbycompregno" placeholder="Search By Registration Number">
  			</div>
  			<div class="col-xs-3" style="width: 230px">
	     		<input class="form-control" type="text" id="searchbycompanyname" placeholder="Search By Company Name">
  			</div>
  			<div class="col-xs-1" style="width: 150px">
	     		<input class="form-control" type="text" id="searchbycity" placeholder="Search By City">
  			</div>	
  			<div class="col-xs-1" style="width: 160px">
	     		<input class="form-control" type="text" id="searchbyrecruitertype" placeholder="Search By Type">
  			</div>		
		</div>
  			
  		<div class="table-responsive">
			<table class = "table table-striped table-bordered table-hover cellpadding-0 cellspacing-0" border="1">
   			<caption>Company Details</caption>
				<thead>
      				<tr>
            			<th>Company ID</th>
            			<th>Company Registration Number</th>
            			<th>Company Name</th>
            			<th>Verification Status</th>
            			<th>Active Status</th>
            			<th>Company Establishment Date</th>
            			<th>Registration Date</th>
            			
            			<th>Email</th>
            			<th>Alternate Email</th>
            			<th>Mobile No</th>
            			<th>Telephone No</th>
            			<th>Fax No</th>
            			
            			<th>Address</th>
            			<th>City</th>
            			<th>Pin Code</th>
            			<th>State</th>
            			<th>Country</th>
            			
            			<th>Company Description</th>
            			<th>GST Status</th>
            			<th>Last Login</th>
            			
            			<th>Recruiter Type</th>
            			<th>Contact Person Name</th>
            			<th>Contact Person Designation</th>
            			
            			<th>Website</th>
            		</tr>
            	</thead>
            
   				<tbody id="myTable">   
               		<c:forEach var="c" items="${comp_obj}">
                  		<tr>
                   			<td>${c.companyId}</td>
                   			<td>${c.companyRegistrationNumber}</td>
                   			<td>${c.companyName}</td>
                   			<td><a href="company_verificationstatus?companyId=${c.companyId}">${c.verificationStatus}</a></td>
                   			<td><a href="company_activestatus?companyId=${c.companyId}">${c.activeStatus}</a></td>
                   			<td>${c.companyEstablishmentDate}</td>
                   			<td>${c.regDate}</td>
                   			
                   			<td><a href="mailto:${c.email}?subject=Problem%20in%20Verification&body=It was found that the Details provided by your company are violating our rules!">${c.email}</a></td>
                   			<td>${c.alternateEmail}</td>
                   			<td>${c.mobNo}</td>
                   			<td>${c.telephoneNo}</td>
                   			<td>${c.faxNo}</td>
                   			
                   			<td>${c.address}</td>
                   			<td>${c.city}</td>
                   			<td>${c.pincode}</td>
                   			<td>${c.state}</td>
                   			<td>${c.country}</td>
                   			
                   			<td>${c.description}</td>
                   			<td>${c.gstStatus}</td>
                   			<td>${c.lastLogin}</td>
                   			
                   			<td>${c.recruiterType}</td>
                   			<td>${c.contactPersonName}</td>
                   			<td>${c.contactPersonDesignation}</td>
                    		
                     		<td><a href="${c.website}" target="_blank">${c.website}</a></td> 
                  		</tr>
               		</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	</body>
</html>