<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<% String query=request.getParameter("query");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
ResultSet rs=stmt.executeQuery("select * from answer where query='"+query+"'");
while(rs.next())
{%>
<h2>
<%
out.println(rs.getString(3)+" : "+rs.getString(2));
%>
</h2>
<%
}
%>


