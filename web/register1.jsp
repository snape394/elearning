<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href="style.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<!-- CSS  -->

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
 
 <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>


<!-- Javascript -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
<script>
var request;
function sendInfo()
{
var v=document.myform.username.value;
var url="findname.jsp?val="+v;
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
<style>
body{
    display: flex;
    min-height: 100vh;
    flex-direction: column;
  }

  main {
    flex: 1 0 auto;
  }
</style>
</head><body>

<main>
  <!-- Dropdown Structure -->
<ul id="dropdown1" class="dropdown-content">
  <li><a href="#!">Change Password</a></li>
  <li><a href="#!">Edit Profile</a></li>
  <li class="divider"></li>
  <li><a href="#!">Logout</a></li>
</ul>
<nav>
<div class="nav-wrapper">
<a href="#!" class="brand-logo">E-Learning</a>
<ul class="right hide-on-med-and-down">
      <li><a href="home.jsp">Home</a></li>
      <li><a href="takequiz.jsp">Take Quiz</a></li>
<li><a href="ask.jsp">Ask Questions</a></li>
<li><a href="makequiz.jsp">Make quiz</a></li>
<li><a href="register.jsp">Register</a></li> 

      <!-- Dropdown Trigger -->
      <li><a class="dropdown-button" href="#!" data-activates="dropdown1">User's Full name<i class="material-icons right">arrow_drop_down</i></a></li>
    </ul>
  </div>
</nav>

 
            <div class="middle_box">
            	<div class="middle_box_text_content">
                	<div class="middle_box_title"></div>
                    <p class="middle_text">
</p>
                </div>
            
            
            </div>

            
            <div class="left_content">
            
            	<div class="calendar_box">
            	
                	<div class="calendar_box_content1">
                	
                		               		  
                		<form method="post" action="registerprocess.jsp" name="myform" >
					<table>
					
					<tr><td style="color:navy;"><B>Registration</B></td></tr>
					<tr><td>User Name:</td><td><input type="text" name="username" onkeyup="sendInfo()"/></td></tr>
							
					<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>
					<tr><td>Category:</td><td><select name="category">
					<option>Select a Category</option>
					<option>Teacher</option>
					<option>Student</option>
					</select>
					</td></tr>
					<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>	
							
					<tr><td>      </td>
					<td><input type="submit" value="Register"></td></tr>
					</table>
                     </form>

                       
                	</div>
                </div>
</div>        
             </main>

<footer class="page-footer">
<h6 class="white-text"><p>CONTACT US
<br>
Mohit Virmani,
Ojas Agrawal<br>
 +91 8193940261, +91 1234567890<br>B.Tech III year (CSE)
</p></h6>   
<div class="footer-copyright">
            2017 Copyright @ E-Learning
</div>
<div class ="container center  white-text">share us on    
 <text class ="blue-text"><b><a href="http://www.fb.com">facebook</a></b></text>
<text class ="light-blue-text lighten-4"><b><a href="http://www.twitter.com">/twitter</a></b></text></div>

        </footer>

</body></html>