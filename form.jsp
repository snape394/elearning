<%@page import="java.sql.*"%>
<html>
<center>
<form method="post" action="result.jsp">
<%
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery("Select * from test");
int i=1;
while(rs.next()){
%>

















<table border="1" width="500px"  cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<b>Select Correct Answer</b>
<table border="0" width="500px" cellspacing="2" cellpadding="4">
<tr>
<td width="50%"> Question: <%= rs.getString("ques") %></td>

<tr>
<td>

1: <input type="radio" name="radio<%=i%>" value= "<%=rs.getString("op1")%>" /></td>
<td><%= rs.getString("op1") %></td></tr> 
<tr>
<td>
2: <input type="radio" name="radio<%=i%>" value="<%=rs.getString("op2")%>" /></td>
<td><%= rs.getString("op2") %></td></tr>

<tr>
<td>
3: <input type="radio" name="radio<%=i%>" value="<%=rs.getString("op3")%>" /></td>
<td><%= rs.getString("op3") %> </td></tr>

<tr>
<td>
4: <input type="radio" name="radio<%=i%>" value="<%=rs.getString("op4")%>" /> </td>
<td> <%= rs.getString("op4") %> </td></tr>

</table>

<%
i++;
}
%>
<tr><td><center><input type="submit" value="submit"></center></td></tr>
</table>
</form>
</center>
</html>