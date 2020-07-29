<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="com.sun.org.apache.bcel.internal.generic.Select"%>
<%! static int count=0; %>
<%! static int count1=0; %>



<%
String name=request.getParameter("quizname");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
PreparedStatement ps=con.prepareStatement("select * from quizques where quizname='"+name+"' and qid='"+name+"' ");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
String question=rs.getString(1);
String option1= rs.getString(2);
String option2= rs.getString(3);
String option3= rs.getString(4);
String option4= rs.getString(5);
session.setAttribute("question",question);
session.setAttribute("option1",option1);
session.setAttribute("option2",option2);
session.setAttribute("option3",option3);
session.setAttribute("option4",option4);
}
}
count++;
catch(Exception e)
{e.printStackTrace();
}
//end of if
%>
<jsp:forward page="start.jsp"></jsp:forward>