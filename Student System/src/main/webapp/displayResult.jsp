<%@page import = "project.ConnectionProvider"%>
<%@page import = "java.sql.*"%>

<html>
<head>

<title>Display Result</title>

<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body bgcolor = "gray">
<div style="color: white; text-align: center; font-size: 30px;"> Result of all Students </div>

<table width = "90%"  border = "solid" bgcolor = "skyblue">
        <thead>
          <tr>
            <th scope="col">Roll</th>
            <th scope="col">Name</th>
            <th scope="col">Course</th>
            <th scope="col"> Year </th>
            <th scope="col">C </th>
            <th scope="col">CPP</th>
            <th scope="col"> Java</th>
            <th scope="col">SQL</th>
            <th scope="col">HTML</th>
            <th scope="col"> Percentage </th>
          </tr>
        </thead>
        <tbody>
<%

try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from studentinfo inner join marksinfo on studentinfo.rollno = marksinfo.roll");
		while(rs.next())
		{
			
 %>
 
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(11)%></td>
            
            <td> <%= ( rs.getDouble(7) + rs.getDouble(8) + rs.getDouble(9) + rs.getDouble(10) + rs.getDouble(11) ) / 5 %></td>
            
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