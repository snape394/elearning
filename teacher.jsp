<html>
<head>

</head>
<body>
<form action="login.html">

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
String fname1=request.getParameter("fname1");
String password=request.getParameter("pass");
session.setAttribute( "fname1", fname1 );
int f=0;
if(fname1!=""&&password!="")
{	
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
ResultSet rs=stmt.executeQuery("select * from registert");
while(rs.next())
{
 if(rs.getString(1).equals(fname1)&&rs.getString(3).equals(password))
 {%>
<script>

window.location.href = "techlogin.jsp"
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
window.location.href = "logint.html"
</script>

<% }}else{%>
<script>
alert("Fields Can't be Empty!");
window.location.href = "logint.html"
</script>
<% } %>

</form>
</body>
</html>