<%
session.setAttribute("fname",null);
String site = new String("http://localhost:8080/ojas/logint.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
%>