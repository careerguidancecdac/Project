<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <%-- <form:form modelAttribute="studentres" method="POST" action="submitresponse" >
	<form:hidden path="responseid.student.regno" value="${student.regno}"/>
	<form:hidden path="responseid.questionid" value="${que.questionid}"/>
	<c:forEach varStatus="lp" var="que" items="${sessionScope.questions}">
		<div><span>${lp.index+1}</span>)${que.question}</div>
		<div>			
			<form:radiobutton path="${}" value="${que.optionA}" label="${que.optionA}"/>
			<form:radiobutton path="${responseid.questionid}" value="${que.optionB}" label="${que.optionB}"/>
			<form:radiobutton path="${responseid.questionid}" value="${que.optionC}" label="${que.optionC}"/>
			<form:radiobutton path="${responseid.questionid}" value="${que.optionD}" label="${que.optionD}"/>
		</div>
	</c:forEach>
	<button type="submit">Submit </button>
	</form:form> --%>
	   <form class="form-horizontal" method="post" action="saveresponse">
        <fieldset>
            <legend>
                <span id="timeleft" class="text-right"></span>
            </legend>
            <input type="hidden" name="regno" value="${sessionScope.student.regno}">
            <c:forEach items="${sessionScope.questions}" var="que" varStatus="loopCounter">
            <div class="form-group">
                <label class="col-lg-2 control-label">Question ${loopCounter.count}</label>
                <div class="col-lg-10 text-left">
                    <input type="hidden" value="${que.questionid}" name="qid${loopCounter.count}">
                
                    <h5>${que.question}</h5>
                    <label>
                        <input type="radio" name="question${loopCounter.count}_option" required="required" value="a">
                            ${que.optionA}                    </label><br>
                    <label>
                        <input type="radio" name="question${loopCounter.count}_option" required="required" value="b">
                            ${que.optionB}                    </label><br>
                    <label>
                        <input type="radio" name="question${loopCounter.count}_option" required="required" value="c">
                            ${que.optionC}                    </label><br>
                    <label>
                        <input type="radio" name="question${loopCounter.count}_option" required="required" value="d">
                            ${que.optionD}                    </label>
                </div>
            </div>
            </c:forEach>

            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-5">
                    <button type="reset" class="btn btn-default">Reset</button>
                    <button type="submit" class="btn btn-primary">Submit your Quiz</button>
                </div>
            </div>
        </fieldset>
    </form>
    <script>
    /* $('.nav-collapse').click('li', function () {
        $('.nav-collapse').collapse('hide');
    }); */
    var myVar = setInterval(function () {
        myTimer()
    }, 1000);
    var d = 600;
    var min, sec;
    function myTimer() {
        d--;
        min = parseInt(d / 60);
        sec = parseInt((d / 60 - min) * 59);
        document.getElementById("timeleft").innerHTML = min + " miunte " + sec + " second left";
    }
</script>
 </body>
</html>