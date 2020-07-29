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
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
stmt.executeUpdate("insert into query(id,query) values('"+c+"','"+fname+"')");
%>
<script>

window.location.href = "stulogin.jsp"
//window.onbeforeunload = function() { return "You work will be lost."; };
</script>

<form>
</form>
</body>
</html>