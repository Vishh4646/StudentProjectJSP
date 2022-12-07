<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>
<%
String roll = request.getParameter("roll");
String c = request.getParameter("c");
String cpp = request.getParameter("cpp");
String java = request.getParameter("java");
String sql = request.getParameter("sql");
String html = request.getParameter("html");

try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into marksinfo values (?,?,?,?,?,?)");
	ps.setString(1,roll);
	ps.setString(2,c);
	ps.setString(3,cpp);
	ps.setString(4,java);
	ps.setString(5,sql);
	ps.setString(6,html);
	ps.executeUpdate();
	response.sendRedirect("addMarks.jsp?msg=done");
}
catch(Exception e)
{
	response.sendRedirect("addMarks.jsp?msg=wrong");
	System.out.println(e);
}
%>