<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%
	String roll = request.getParameter("roll");
%>

<html>
<head>
<title>Add Marks</title>
<link rel = "stylesheet" href= "style.css">
</head>
<body bgcolor = "gray">

<div class = "form">
<form action = "addMarksAction.jsp" method="post" >
<h2> Add Marks For Each Subject (Out of 100)</h2>
<br>
<input  type = "number" value = "<%= roll %>" name = "roll" hidden = "hidden" >

 <h3> C </h3>
<input  type = "number" name = "c" placeholder = " " required>

<h3> CPP </h3>
 <input type = "number" name = "cpp" placeholder = " " required>

 <h3> Java </h3>
 <input type = "number" name = "java" placeholder = " " required>

<h3> SQL </h3>
 <input  type = "number" name = "sql" placeholder = " " required>

<h3>HTML</h3>
 <input type = "number" name = "html" placeholder = " " required>
<br><br><br>
 <button > Add </button>
 <br><br>
 <a href="index.jsp"> Home </a>
 
</form>
</div>
</body>

</html>