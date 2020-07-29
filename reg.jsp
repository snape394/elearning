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
stmt.executeUpdate("insert into register(First_Name,Last_Name,Password,Email) values('"+fname+"','"+lname+"','"+password+"','"+email+"')");
%>
	<script>

window.location.href = "login.html"
//window.onbeforeunload = function() { return "You work will be lost."; };
</script>
<% }else{%>
<h1>FAIL<h1>
<% }%>
</form>
</body>
</html>