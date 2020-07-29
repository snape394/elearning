<head>
<link href="style1.css" rel='stylesheet' type='text/css' />
</head>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<h3>Displaying Information</h3>
<%
String n=request.getParameter("subject");
String id="";
if(n.length()>0)
{
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/example","root","root");
PreparedStatement ps=con.prepareStatement("select * from worker where name like '"+n+"%'");
out.print("<br>");
ResultSet rs=ps.executeQuery();
out.print("<table border='1' cellspacing=3 cellpadding=2 id='myTable'>");
out.print("<tr><td><B>Name</B></td><td><B>Age</B></td><td><B>Place</B></td><td><B>Occupation</B></td><td><B>Booking</B></td></tr>");
while(rs.next()){
out.print("<tr><td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(5)+"</td>");%>
<td><a href ="solve.jsp?query=<%=rs.getString(2)%>">Book</a></td>
<%
out.print("</tr>");
id=rs.getString(1);
}
out.print("</table>");
con.close();
}catch(Exception e){e.printStackTrace();}
}
session.setAttribute( "id", id);
%>







<p align="right">
</p>








<br>
<br>
<form action="submit.jsp">
<textarea onfocus="this.value = '';" name="rev">
Write your review here
</textarea>
<br>
<input type="submit">
</form>
<br>
<br>
<fieldset class="rating" align="center">
    <input type="radio" id="star5" name="rating" value="5" /><label class = "full" for="star5" title="Awesome - 5 stars"></label>
    <input type="radio" id="star4half" name="rating" value="4 and a half" /><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
    <input type="radio" id="star4" name="rating" value="4" /><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
    <input type="radio" id="star3half" name="rating" value="3 and a half" /><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
    <input type="radio" id="star3" name="rating" value="3" /><label class = "full" for="star3" title="Meh - 3 stars"></label>
    <input type="radio" id="star2half" name="rating" value="2 and a half" /><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
    <input type="radio" id="star2" name="rating" value="2" /><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
    <input type="radio" id="star1half" name="rating" value="1 and a half" /><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
    <input type="radio" id="star1" name="rating" value="1" /><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
    <input type="radio" id="starhalf" name="rating" value="half" /><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
</fieldset>