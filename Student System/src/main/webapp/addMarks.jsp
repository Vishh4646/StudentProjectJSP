<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body bgcolor="gray">
<div style="color: white; text-align: center; font-size: 30px;">Home </div>
<%
String msg = request.getParameter("msg");
if("added".equals(msg))
{
%>

<h3 class="alert">Marks added successfully!</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert">Something Went Wrong!!! </h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong...Try again!</h3>
<%} %>
<table width = "90%" border = "solid" bgcolor = "skyblue">
        <thead>
          <tr>
            <th scope="col">Roll</th>
            <th scope="col">Name</th>
            <th scope="col">Course</th>
            <th scope="col"> Year </th>
            <th scope="col">Add Marks </th>
          </tr>
        </thead>
        <tbody>
<%
try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from studentinfo");
		while(rs.next())
		{
			
 %>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><a href="addMarksEachStudent.jsp?roll=<%=rs.getString(1)%>">Add Marks </a></td>
          </tr>
<%
		 }
   }
catch(Exception e){
	System.out.println(e);
}
%>
        </tbody>
      </table>
   <center> <a href="index.jsp">Home </a> </center>
      <br>
      <br>
      <br>

</body>
</html>