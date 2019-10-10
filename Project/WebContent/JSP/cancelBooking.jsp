<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../stylesheets/loginPage.css" />
<link rel="stylesheet" type="text/css" href="../stylesheets/menu.css" />


</head>
<body>
<form action="confirmBooking.jsp" method="post">
<div id="header" style="background-image:url(../images/Taj-Mahal-Wallpapers-HD-Pictures-32.jpg);height:450px;width:1400px;float:up;text-align:center;text-size:100px">

<h1>TOURS AND TRAVELS</h1><br>

<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<div class="drop">
<ul class="drop_menu">
<li><a href='#'><i><b><font size=4>Home</font></b></i></a>

</li>
<li><a href='#'><i><b><font size=4>Contact Us</font></b></i></a>
</li>
<li><a href='aboutus.html'><i><b><font size=4>About Us</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Login</font></b></i></a>
<ul><li><a href='adminlogin.html'>Admin</a></li>
<li><a href='userlogin.html'>User</a></li>
</ul></li>

<li><a href='#'><i><b><font size=4>Admin Options</font></b></i></a>
<ul><li><a href=''>Add Tour Package</a></li>
<li><a href=''>Package Details</a></li>
<li><a href=''>Booking Details</a></li>
<li><a href=''>User Details</a></li>
</ul></li>

</ul> 

</div>
</div>
<div id="Content" style="background-color:#EEEEEE;height:450px;width:1020px;float:left;text-align:center">
Number of Travelers<input type="text" name="persons" value="persons">
<%!
String persons;

%>

<%
if(request.getParameter("persons") != null && request.getParameter("persons") != "")
{

	persons=request.getParameter("persons").toString();
}
else 
{
	 persons="";
}
%>

<br><br>
</div>

<div class="header" style="background-color:#EEEEEE;
height:480px;width:273px;float:right;"><br>
<aside><center>
 <img src="../images/amazon-prime-video-759.jpg" style="height:218px;width:270px;"><br><br>
<img src="../images/amazon-prime-video.jpg" style="height:218px;width:270px;">
  <p></p></center>
</aside><br>
</div>

</form>
</body>
</html>