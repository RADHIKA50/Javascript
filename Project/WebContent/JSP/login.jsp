
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Database.*"%>
<%@ page import="java.sql.*"%>
<%@ page import ="java.sql.Connection"%>
<%@ page import=" java.sql.SQLException"%>
<%@ page import ="java.sql.Statement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../stylesheets/loginPage.css" />
<link rel="stylesheet" type="text/css" href="../stylesheets/menu.css" />

<title>Login Page</title>
</head>
<body>

<form action="Login.jsp" method="post">

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
<ul><li><a href='adminLogin.jsp'>Admin</a></li>
<li><a href='userlogin.jsp'>User</a></li>
</ul></li>
</ul> 

</div>
</div>

<div id="Content" style="background-color:#EEEEEE;height:480px;width:895px;float:left;text-align:center">
<br><br>
<h2>LOGIN</h2>
<fieldset id="login"><br>

<label for="user name"><i>User Id</i>&nbsp;</label>
<input id="user name" type="text" name="userid" value="">
<br><br>
<label for="password"><i>Password</i></label>
<input id="Password" type="Password" name="password" value="">
<br><br>
<input type="submit" name="submit" value="SUBMIT">
<br><br>
<i>New User</i>

<nav>
<a href="signUp.html">Sign Up</a>
</nav>

</fieldset>
</div>
</form>



<div class="header" style="background-color:#EEEEEE;
height:480px;width:350px;float:right;"><br>
<aside><center>
 <img src="../images/amazon-prime-video-759.jpg" style="height:218px;width:270px;"><br><br>
<img src="../images/amazon-prime-video.jpg" style="height:218px;width:270px;">
  <p></p></center>
</aside><br>
</div>

<%!
	// variable declarations
	String uname, pwd;

%>
<%
		
				//|| (request.getParameter("Password") != null && request.getParameter("Password") != ""))
		if(request.getParameter("submit") != null)
		{
			// get user name
			if(request.getParameter("userid") != null && request.getParameter("userid") != "")
			{
				uname = request.getParameter("userid").toString();
			}
			else 
			{
				uname = "";
			}
			
			// get password
			if(request.getParameter("password") != null && request.getParameter("password") != "")
			{
				pwd = request.getParameter("password").toString();
			}
			else 
			{
				pwd = "";
			}
		
			// Establish connection and check whether userid and password are correct or not
			if(JDBC1.createConnection())
			{
				String nm, pass;
				nm = "";
				pass = "";
				String sql = "select name, pwd from stud where name ='" + uname + "' " + " and pwd = '" + pwd +"';";
				
				Statement st = JDBC1.getStmt();
				
				ResultSet rs = st.executeQuery(sql);
				
			//	if(rs.isBeforeFirst())
				{
					
					while(rs.next())
					{
						nm = rs.getString(1) ;
						pass = rs.getString(2);
					}
				}
				
			
				if(uname.equals(nm) && pwd.equals(pass))
				{
			%>
				<script>
					alert("Successful login")
					location.href="addPackage.jsp";
				</script>
			<% 		
			
					//request.getRequestDispatcher("addPackage.jsp");
					//response.sendRedirect("addPackage.jsp");
				}
			}
		}
	%>
	
	
	
	
</body>
</html>