<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>profile</title>
</head>
<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
</SCRIPT>
<body background="G:\Classroom1.jpg" bgcolor="red" > 

<form action="profile.jsp"  method="post" >

<table  width="960" border="0" cellpadding="0" cellspacing="4" bgcolor="grey">
<tr>
 <td>
 <center><img src="D:\New folder\Web Page Header.gif" width="960"height="100" ></center>
</td>
</tr>
<tr>
<td align="left" style="word-spacing:6px;font-size:120%;padding-right:30px;color:#888888;white-space:nowrap;">
<a href="profile.jsp" title="Home">Home </a>  | 
<a href="update.jsp" title="update"> Edit Profile </a>  | 
<a href="study.jsp" title="study">Study material</a>  | 
<a href="video.jsp" title="video">Video Lectures</a>  | 
<a href="question.jsp" title="ask">Ask doubts</a>  | 
<a href="ans.jsp" title="tell">Answers</a>

</td>

<td align="right" style="word-spacing:6px;font-size:120%;padding-right:10px;color:#888888;white-space:nowrap;">
|<a href="main.jsp" title="tell">Logout</a>
</td>
</tr>
</table>






<%
String user =(String)session.getAttribute("user");



try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection c= DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
		Statement s= c.createStatement();
		String sql="select * from register where user='"+user+"'";
	
		
			ResultSet rs= s.executeQuery(sql);
		rs.next();
		

%>
  
  

<br>
<br>
<br>
 <table border=0 cellspacing=2 cellpadding=2 width="100%"> 
<tr>  <td bgcolor="red"><table cellpadding=0 cellspacing=0 border=1 width=100%>   <tr>   <td bgcolor="green" align=center style="padding:2;padding-bottom:4">   <font size=-1 color="white" face="verdana,arial"> <b>Profile</b></font></tr>
<TR> 
      <TD width="50%"> 
      <TABLE  cellspacing=2 cellpadding=2 width="100%"> 
      <TR>
      <td>
     
			<center> <img src="G:\Classroom1.jpg" width=100 height= 100 > </center>
		</td>
		</TR>
			<tr><td>Logged in as <input type="text" name="user" value="<% out.println(rs.getString(1)); %>"></td></tr> 
		
   
      </TABLE> 
   </TD> 
   <TD> 
      <TABLE border=0 cellspacing=2 cellpadding=2 width="100%"> 
      <TR> 
         <TD>
	<tr><td>  <font face="verdana,arial" size=-1>  First Name: </font></td>  <td>  <input type="text" name="name" value="<% out.println(rs.getString(1)); %>">  </td>  </tr>


	<tr><td>  <font face="verdana,arial" size=-1>   Last Name:</font></td>  <td>   <input type="text" name="branch" value="<% out.println(rs.getString(2)); %>">  </td>  </tr>

	<tr><td>  <font face="verdana,arial" size=-1>  Email id:</font></td>  <td>   <input type="text" name="year" value="<% out.println(rs.getString(3)); %>">  </td>  </tr>

	
 
	      </TABLE> 
   </TD> 
   <TD> 
   
</TABLE> 

</td>
</tr>
</table>

</form>
</body>
</html>
