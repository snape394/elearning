<head>
        <meta http-equiv="refresh" content="3;t1.html" />
    </head>

<%@page import="java.sql.*"%>

<%
String st[]=new String[100];
for(int i=0;i<st.length;i++){
int j=i+1;
st[i]=request.getParameter("radio"+j);
if(st[i]==null)
	st[i]="-999";

}
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt=connection.createStatement();
ResultSet rs=stmt.executeQuery("Select ans from test");
String ans="";
while(rs.next()){
ans+=rs.getString("ans")+" ";
}
int count=0;
String answers[]=ans.split(" ");
for(int i=0;i<answers.length;i++){
if(st[i].equals(answers[i])){
count++;
}
}
out.println("Your "+count+" answers are correct");
%>
<h3>You will be redirected to Quiz Page in 3 secs.....</h3>
<script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";
window.onhashchange=function(){window.location.hash="Welcome!!";}
</script> 