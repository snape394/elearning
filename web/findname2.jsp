<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>


<%
String n=request.getParameter("val");
if(n.length()>0){
try{
	
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");

PreparedStatement ps=con.prepareStatement("select * from quizinfo where subject like '"+n+"%'");

ps.setString(1,n);

out.print("<br>");
out.print(n);
ResultSet rs=ps.executeQuery();

out.print("<table border='3' cellspacing=3 cellpadding=2 id='myTable'>");
out.print("<tr><td><B>Quizs</B></td><td><B>Subject</B></td></tr>");
while(rs.next()){
out.print("<a>"+rs.getString(2)+"</a>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("</tr>");
out.print("hi"+rs.getString(1));
}
out.print("</table>");
con.close();
}catch(Exception e){e.printStackTrace();}
}
%>