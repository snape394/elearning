<!DOCTYPE html>

<html lang="en">

<head>
  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
 
 <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
 
 <title>Student Page-  E-Learning</title>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
  
<!-- CSS  -->

  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
 
 <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>


<!-- Javascript -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>



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

</head>


<body>
 
<main>


<!--SQL -->
<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/mydb"
        user="root" password="system"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM users;
    </sql:query>
 


<ul id="dropdown1" class="dropdown-content">
  <li><a href="Edit Profile.htm">Edit Profile</a></li>
  <li><a href="change pass.htm">Change Password</a></li>
<li><a href="download.htm">Download Notes</a></li>
  <li class="divider"></li>
  <li><a href="logout.htm">Logout</a></li>
</ul>

<nav>
  <div class="nav-wrapper container">
    <a href="home.htm" class="brand-logo">E-Learning</a>
    
<ul class="right hide-on-med-and-down">
      
<!-- Dropdown Trigger -->
      
<li><a class="dropdown-button" href="#!" data-activates="dropdown1">User's full name<i class="material-icons right">arrow_drop_down</i></a></li>
    </ul>
  </div>
</nav>
<br>



<div class="row">
    <form class="col s6">
      <div class="row">
        <div class="input-field col s8"><br><br>
          <textarea id="textarea1" class="materialize-textarea"></textarea>
          <label for="textarea1">Post Your Query Here</label>
        </div>

</div>

<button class ="btn waves-effect waves-light" type="submit" name ="action">Submit</button>

    </form>


<div class="col s6 right">

<table>
            <caption><h5>Recently asked Queries</h5></caption>
            <tr>
                <th>ID</th>
                <th>Query</th>
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>

                    <td><c:out value="${user.id}" /></td>

                    <td><a href ="#!"><c:out value="${user.query}" /></a> </td>
                   </tr>
            </c:forEach>
        </table>
    </div>        
</div>
<div align="right">
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
ResultSet rs=stmt.executeQuery("select * from query");
while(rs.next)
{%>
<a>	<%=rs.getString(2);%></a>
<%}

%>
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
            
         
