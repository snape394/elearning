<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<head>
<script>
var request;
function sendInfo()
{
var v=document.myform.subject.value;
var url="search.jsp?val="+v;
if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}
try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('location').innerHTML=val;
}
}


</script>
</head>
<form method="post" name="myform" action="display.jsp">
			Enter the Name:<input type="text" name="subject" onkeyup="sendInfo()"/><br><br>
			<input type="submit">
			<div id="location" ></div>
			
			
			</form>
			<form method="post" name="myform" action="d.jsp">
			<select name="city">
			<option>Select City</option>
  <option>Mumbai</option>
  <option>Kanpur</option>
  <option>Lucknow</option>
  <option >Patna</option>
  <option >Jammu</option>
  <option >Pune</option>
  <option >Indore</option>
  <option >Bhopal</option>
</select>
<select name="gender">
			<option>Select Gender</option>
  <option>Male</option>
  <option>Female</option>
</select>
<select name="work">
			<option>Select Work</option>
  <option >Builder</option>
  <option >Carpenter</option>
  <option >Architect</option>
  <option >Mason</option>
  <option >Supplier</option>
  <option>Bodygaurd</option>
  <option>Bhopal</option>
</select>
<input type="submit">
</form>
			</html>