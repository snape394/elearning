<html>
<head>

</head>
<body>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
String fname1=request.getParameter("textarea1");
char c=fname1.charAt(0);
String fname=fname1.substring(2);
String q="";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
ResultSet rs=stmt.executeQuery("select * from query where id='"+c+"'");
while(rs.next())
q=rs.getString(2);
stmt.executeUpdate("insert into answer(id,answer,query) values('"+c+"','"+fname+"','"+q+"')");
%>
<script>

window.location.href = "techlogin.jsp"
//window.onbeforeunload = function() { return "You work will be lost."; };
</script>
<form>
</form>
</body>
</html>