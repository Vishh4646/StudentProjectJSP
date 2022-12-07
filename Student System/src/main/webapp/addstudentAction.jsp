<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%
String roll = request.getParameter("roll");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String course = request.getParameter("course");
String year = request.getParameter("year");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into studentinfo values (?,?,?,?,?)");
	ps.setString(1,roll);
	ps.setString(2,name);
	ps.setString(3,gender);
	ps.setString(4,course);
	ps.setString(5,year);
	ps.executeUpdate();
	response.sendRedirect("addstudent.jsp?msg=done");
}
catch(Exception e)
{
	response.sendRedirect("addstudent.jsp?msg=wrong");
	System.out.println(e);
}
%>