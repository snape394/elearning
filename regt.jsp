<html>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String password=request.getParameter("pass");
String email=request.getParameter("email");
if(fname!=""&&lname!=""&&password!=""&&email!="")
{	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
stmt.executeUpdate("insert into registert(First_name,Last_name,password,email) values('"+fname+"','"+lname+"','"+password+"','"+email+"')");
%>
<script>
window.location.href = "logint.html"
//window.onbeforeunload = function() { return "You work will be lost."; };
</script>
<% }else{%>
<h1>FAIL<h1>
<% }%>
</body>
</html>