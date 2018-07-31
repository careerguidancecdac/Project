<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <title>Course Statistics</title>
</head>
<body>

<div class="container">
    <canvas id="myChart"></canvas>
  </div>
     
  <script>
    let myChart = document.getElementById('myChart').getContext('2d');

    Chart.defaults.global.defaultFontFamily = 'Lato';
    Chart.defaults.global.defaultFontSize = 18;
    Chart.defaults.global.defaultFontColor = '#777';

    var labels = [];
    var data = [];
    <c:forEach items="${studstat_list}" var="item">
		data.push("${item[0]}")
	</c:forEach>
			
	<c:forEach items="${studstat_list}" var="item">
		labels.push("${item[1]}")
	</c:forEach>
		
	let massPopChart = new Chart(myChart, 
    {
      type:'bar', 
      data:
      {
        labels,
        datasets:
        [{
        	label:'Course Statistics',
            data,
     		backgroundColor:
     		[
            	'rgba(255, 99, 132, 0.6)',
            	'rgba(54, 162, 235, 0.6)',
	            'rgba(255, 206, 86, 0.6)',
            	'rgba(75, 192, 192, 0.6)',
            	'rgba(153, 102, 255, 0.6)',
            	'rgba(255, 159, 64, 0.6)',
            	'rgba(255, 99, 132, 0.6)'
          	],
          	borderWidth:1,
          	borderColor:'#777',
          	hoverBorderWidth:3,
          	hoverBorderColor:'#000'
        }]
      },
      /*Pie Chart
      options : {
    		    responsive: true,
    		    title: {
    		        display: true,
    		        position: "top",
    		        text: "Pie Chart",
    		        fontSize: 18,
    		        fontColor: "#111"
    		    },
    		    legend: {
    		        display: true,
    		        position: "bottom",
    		        labels: {
    		            fontColor: "#333",
    		            fontSize: 16
    		        }
    		    }
    		}, */
      // 
      options:
      {
        title:
        {
          display:true,
          text:'Number of Students in Courses',
          fontSize:25
        },
        legend:
        {
          display:true,
          position:'right',
          labels:
          {
          	fontColor:'#000'
          }
        },
        layout:
        {
          padding:
          {
            left:50,
            right:0,
            bottom:0,
            top:0
          }
        },
        scales: 
        {
          yAxes: 
          [{
            ticks: 
            {
            	beginAtZero: true
            }
          }]
        },
        tooltips:
        {
          enabled:true
        }
      } 
    });
   </script>

</body>
</html>