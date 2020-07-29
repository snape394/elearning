<%@ page import="java.io.*"%>
<html>
<table>
<tr><th>File Name</th><th>Download File</th>
<%
File f = new File("C:/Users/OJAS AGRAWAL/Desktop/Extra/apache-tomcat-9.0.0.M17/webapps/ojas/proo/files/");
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
%>
<tr><td><%=name%></td><td><a href="d.jsp?f=<%=name%>">Download File</a></td></tr>
     <%
        }
%>
</table>
</html>