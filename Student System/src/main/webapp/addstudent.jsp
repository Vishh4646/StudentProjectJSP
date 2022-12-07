<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>


<html>
<head>
<title>Add Student</title>
<link rel = "stylesheet" href= "style.css">
</head>
<body bgcolor = "gray">
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Student Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>
<%

%>
<div class = "form">
<form action = "addstudentAction.jsp" method="post" >
<h2> Add Student Details </h2>
<br>
 <h3>Enter Student Name </h3>
<input  type = "text" name = "name" placeholder = " " required>

<h3>Enter Roll Number</h3>
 <input type = "number" name = "roll" placeholder = " " required>

 <h3>Enter Gender </h3>
 <input type = "text" name = "gender" placeholder = " " required>

<h3>Enter Course</h3>
 <input  type = "text" name = "course" placeholder = " " required>

<h3>Enter Class</h3>
 <input type = "number" name = "year" placeholder = " " required>
<br><br><br>
 <button > Add </button>
 <br><br>
 <a href="index.jsp">Home </a>
 
</form>
</div>
</body>

</html>