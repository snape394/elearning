<html>
<head>

</head>
<body>
<form action="login.html">

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
String fname=request.getParameter("fname");
String password=request.getParameter("pass");
session.setAttribute( "fname", fname );
int f=0;
if(fname!=""&&password!="")
{	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
ResultSet rs=stmt.executeQuery("select * from register");
while(rs.next())
{
 if(rs.getString(1).equals(fname)&&rs.getString(3).equals(password))
	 
 {%>
<script>

window.location.href = "stulogin.jsp"
//window.onbeforeunload = function() { return "You work will be lost."; };
</script>
<%
f=1; 
break;
}}
if(f==0)
{%>
<script>
alert("Wrong Fname or Pssword!");
window.location.href = "login.html"
</script>
<% }}else{%>
<script>
alert("Fields Can't be Empty!");
window.location.href = "login.html"
</script>
<% } %>

</form>
</body>
</html>