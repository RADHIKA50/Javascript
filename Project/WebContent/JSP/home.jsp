<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Database.*"%>
<%@ page import="java.sql.*"%>
<%@ page import ="java.sql.Connection"%>
<%@ page import=" java.sql.SQLException"%>
<%@ page import ="java.sql.Statement"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../stylesheets/loginPage.css" />
<link rel="stylesheet" type="text/css" href="../stylesheets/menu.css" />
<link rel="stylesheet" type="text/css" href="../stylesheets/home.css" />

</head>
<body>

<form action="signUp.jsp" method="post">

<div id="header" style="background-image:url(../images/Taj-Mahal-Wallpapers-HD-Pictures-32.jpg);height:450px;width:1400px;float:up;text-align:center;text-size:100px">
<h1>TOURS AND TRAVELS</h1><br>

<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<div class="drop">
<ul class="drop_menu">
  <li><a href='home.jsp'><i><b><font size=4>Home</font></b></i></a>

</li>
<li><a href='contactUs.jsp'><i><b><font size=4>Contact Us</font></b></i></a>
</li>
<li><a href='aboutUs.jsp'><i><b><font size=4>About Us</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Login</font></b></i></a>
<ul><li><a href='adminLogin.jsp'>Admin</a></li>
<li><a href='userLogin.jsp'>User</a></li>
</ul></li>
</ul> 

</div>
</div>
<div id="Content" style="background-color:#EEEEEE;height:480px;width:975px;float:left;text-align:center">
<br><br><i>
<h1>Welcome to Tours and Travels!!!!</h1>

 <div class="container">
<img src="../images/kovalam-beach.jpg"  alt="Norway" height="200" width="200">&nbsp;&nbsp;&nbsp;
 <!--  <img src="../images/kovalam-beach.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;-->
<img src="../images/slide4.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;
<img src="../images/bhogwe-beach.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;
<img src="../images/kolkata-1.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;
<br>

  <div class="bottom-right"></div>
</div> 
</div>




 
<!--  <img src="../images/kovalam-beach.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;
<img src="../images/slide4.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;
<img src="../images/bhogwe-beach.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;
<img src="../images/kolkata-1.jpg" height="200" width="200">&nbsp;&nbsp;&nbsp;
<br>
</div>-->

<div class="header" style="background-color:#EEEEEE;height:480px;width:305;float:right;"><br>
<aside><center>
 <img src="../images/amazon-prime-video-759.jpg" style="height:218px;width:270px;"><br><br>
<img src="../images/amazon-prime-video.jpg" style="height:218px;width:270px;">
  <p></p></center>
</aside><br>
</div>



</form>
</body>
</html>



