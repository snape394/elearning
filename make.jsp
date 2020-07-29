<%@page language="java" import="java.sql.*" %>

<%
if(request.getParameter("submit")!=null)
{
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");

try{
Statement st = con.createStatement();
String quest = request.getParameter("quest").toString();
String QA = request.getParameter("QA").toString();
String QB = request.getParameter("QB").toString();
String QC = request.getParameter("QC").toString();
String QD = request.getParameter("QD").toString();
String correctAns = request.getParameter("correctAns").toString();
String qry = "insert into test(ques,op1,op2,op3,op4,ans) values('"+quest+"','"+QA+"','"+QB+"','"+QC+"','"+QD+"','"+correctAns+"')";
int val = st.executeUpdate(qry);
}
catch(SQLException ex){
System.out.println("SQL satatment not found");
}
}
catch(Exception e){
e.printStackTrace();
}
}

%>

<html>
<title>Quize application in jsp</title>
<head>

<script>

function validateForm(theForm){

if(theForm.quest.value==""){
//Please enter username
alert("Please enter Question.");
theForm.quest.focus();
return false;
}

return true;
} 
</script>
</head>

<body>
<br>
<br/>
<center>

<table border="1" width="450px" cellspacing="0" cellpadding="0">
<tr>
<td width="100%">
<form method="POST" action="" onsubmit="return validateForm(this);">

<table border="0" width="400px" cellspacing="2" cellpadding="4">
<tr>
<td width="50%"><b>Enter Question:</b></td>
<td width="50%"><input type="text" name="quest" size="40"/> </td>
</tr>
<tr>
<td width="50%"><b>Enter Answer(A.):</b></td>
<td width="50%"><input type="text" name="QA" size="40"/> </td>
</tr>
<tr>
<td width="50%"><b>Enter Answer(B.):</b></td>
<td width="50%"><input type="text" name="QB" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Answer(C.):</b></td>
<td width="50%"><input type="text" name="QC" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Enter Answer(D.):</b></td>
<td width="50%"><input type="text" name="QD" size="40"/> </td>
</tr>

<tr>
<td width="50%"><b>Correct Answer:</b></td>
<td width="50%"><input type="text" name="correctAns" size="10"/> </td>
</tr> 

</table>
<center>
<p><input type="submit" value="Submit" name="submit">
<input type="reset" value="Reset" name="reset"></p>
</center> 
</form>
</td>
</tr>
</table>
<br>
<br>
<form action="t2.html">
<input type="submit" value="Home">
</center>
<script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="Welcome!!";}
</script> 
</body>
</html>