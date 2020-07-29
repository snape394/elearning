<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	  <link rel="stylesheet" href="animate.css">
	 
    </head>

    <body>
      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
      <script type="text/javascript" src="js/materialize.min.js"></script>
   <%
   if(session.getAttribute( "fname1")==null)
   {
	   String site = new String("http://localhost:8080/ojas/logint.html");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
   }
   %>
   <body background="body.jpg">
   <nav>

  <div class="nav-wrapper">
    <a href="stulogin.jsp" class="brand-logo"></a><img src="logo.png" height="70px"</img></a>
    <ul class="right hide-on-med-and-down">
      <li><a href="#">Welcome <%= session.getAttribute("fname1") %></a></li>
      <li><a class="dropdown-button" href="#!" data-activates="dropdown1">Content<i class="material-icons right">arrow_drop_down</i></a></li>
	  <li><a href="logout.jsp">LOG OUT!</a></li>
    </ul>
  </div>
</nav>
 <ul id="dropdown1" class="dropdown-content">
  <li><a href="proo/page.jsp"> Upload Notes</a></li>
  <li><a href="proo/page.jsp">Upload PDFS</a></li>
  <li><a href="proo/page.jsp">Upload Videos</a></li>
  <li class="divider"></li>
</ul>



<marquee direction="left" style="color: black;" onmouseover="stop()" onmouseout="start()"><B>Teach using different methods(quizes,queries,video learning)</B></marquee>
<p>
<div class="row s6 right">
	<table>
            <h5>Recently asked Queries</h5>
            <tr>
                <th>ID</th>
                <th>Query</th>
            </tr>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/ojas","root","root");
Statement stmt= con.createStatement();
ResultSet rs=stmt.executeQuery("select * from query");
while(rs.next())
{%>

<tr>
<td><%=rs.getString(1)%></td>
<td><a href ="solve.jsp?query=<%=rs.getString(2)%>"><%=rs.getString(2)%></a> </td>
</tr>      

<%}

%>

        </table>
    </div>        
</p>

	
     
	<a href="drawboard.xhtml" class="waves-effect waves-light btn animated pulse infinite">Drawboad</a>
	<br>
	<br>
	<a href="chat.xhtml" class="waves-effect waves-light btn animated pulse infinite">Chat</a>
	<br>
	<br>
	<a href="/ojas/t2.html" class="waves-effect waves-light btn animated pulse infinite">Make Quiz</a>
	<br><br>
	<a href="/ojas/video/minivid.jsp" class="waves-effect waves-light btn animated pulse infinite">Video Chat</a>
	<br><br>
	
	<div class="row">
    <form class="col s6" action="answer.jsp">
      <div class="row">
        <div class="input-field col s8"><br><br>
          <textarea id="textarea1" name="textarea1" class="materialize-textarea"></textarea>
          <label for="textarea1" class="black-text">Write Answer Of The Query*</label>
		  <button class ="btn waves-effect waves-light" type="submit">Submit</button>
        </div>
		</div>
		</form>
		</div>
	<h6>*In order to answer the query write the</h6>
	<h6>id number along with answer and press</h6>
	<h6>submit button("id your_answer").</h6>
	
	
	
	
	
	
 
 
 
 
 
 
 
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
		
		
		
		<script type="text/javascript">
$(document).ready(function(){
      $(".dropdown-button").dropdown();
    });
	</script>
	<script>
window.location.hash="no-back-button";
window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="Welcome!!";}
</script> 

	</body>
	</html>