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
</head>
<body>
<form action="forgetpassword.jsp">
<div id="header" style="background-image:url(../images/Taj-Mahal-Wallpapers-HD-Pictures-32.jpg);height:450px;width:1400px;float:up;text-align:center;text-size:100px">
<u><font size="8" color="black"><h1>TOURS AND TRAVELS</h1></font></u></b></b><br>

<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<div class="drop">
<ul class="drop_menu">
<li><a href='#'><i><b><font size=4>Home</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Contact Us</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>About Us</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Login</font></b></i></a>
<ul><li><a href='adminlogin.jsp'>Admin</a></li>
<li><a href='userlogin.jsp'>User</a></li>
</ul></li>
</ul> 
</div>

</div>

<div id="Content" style="background-color:#EEEEEE;height:450px;width:1020px;float:down;text-align:center">
<br><br>
<b><i>USER LOGIN</i></b>
<br><br>
<fieldset id="login"><br>
<i>User Id</i><input type="text" name="submit"><br><br>
<!-- <i>Password</i><input type="text" name="submit">-->
<br><br>
 <input type="submit" name="submit" value="Login">
<nav>
</nav>
</fieldset>
</div>
<br><br>



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
String uname,pwd;

%>

<%
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
		//if(request.getParameter("password") != null && request.getParameter("password") != "")
		//{
			//pwd = request.getParameter("password").toString();	
		//}

		//else 
		//{
			//pwd = "";
		//}



	// Establish connection and check whether userid and password are correct or not
	if(JDBC1.createConnection())
	{
	String nm;
	nm = "";
		//pwd = "";
		//String sql1 = "insert into admin values('admin','admin');";
		
		//Statement st1 = JDBC1.getStmt();
		
		//int rs1 = st1.executeUpdate(sql1);
		
		String sql = "select userid from _user where userid ='" + uname + "'";
		Statement st = JDBC1.getStmt();
		
		ResultSet rs = st.executeQuery(sql);
	//System.out.println("hi");
	//	if(rs.isBeforeFirst())
		{
			
			while(rs.next())
			{
			nm= rs.getString(1) ;
			
			}
		}
		
	
		if(uname.equals(nm))
		{
			String sql2 = "select password from _user where  userid ='"+uname+"'";
		//	Statement st = JDBC1.getStmt();
				%>
		<script>
			alert("OK")
			location.href="froget.jsp";
		</script>
		
	
	<% 
			 int rs1 = st.executeUpdate(sql2);
			//ResultSet r=rs1.getString(0);
			out.print(""+rs1);
			//request.getRequestDispatcher("addPackage.jsp");
		//response.sendRedirect("addPackage.jsp");
		}
	}
}
	%>
</form>
</body>
</html>
</html>