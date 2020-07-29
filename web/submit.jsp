<html>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

Object id=session.getAttribute("id");
String rev=request.getParameter("rev");	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/example","root","root");
Statement stmt= con.createStatement();
stmt.executeUpdate("insert into review values('"+id+"','"+rev+"')");
%>
</body>
</html>