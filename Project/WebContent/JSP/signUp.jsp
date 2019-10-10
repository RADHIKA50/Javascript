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
<form action="signUp.jsp" method="post">
<div id="header" style="background-image:url(../images/Taj-Mahal-Wallpapers-HD-Pictures-32.jpg);height:450px;width:1400px;float:up;text-align:center;text-size:100px">
<h1>TOURS AND TRAVELS</h1><br>

<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<div class="drop">
<ul class="drop_menu">
<!--  <li><a href='#'><i><b><font size=4>Home</font></b></i></a>

</li>
<li><a href='#'><i><b><font size=4>Contact Us</font></b></i></a>
</li>-->
<li><a href='aboutus.html'><i><b><font size=4>About Us</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Login</font></b></i></a>
<ul><li><a href='adminlogin.html'>Admin</a></li>
<li><a href='userlogin.html'>User</a></li>
</ul></li>
</ul> 

</div>
</div>
<div id="Content" style="background-color:#EEEEEE;height:480px;width:940px;float:left;text-align:center">
<br><br><i>
<h2>Sign Up</h2>
<form id="signup" action="/signup" method="post">
<fieldset id="signup"><br>
<label for="user name">User Id&nbsp;<span style="color:red;">*</span></label>
<input id="user name" type="text" autofocus="true" name="userid" required>
<br>
<br>
<label for="name">Name&nbsp;<span style="color:red;">*</span></label>
<input id="name" type="text" autofocus="true" name="name">
<br>
<br>
<label for="password">Password&nbsp;<span style="color:red;">*</span></label>
<input id="Password" type="Password" name="Password" >
<br>
<br>
<label for="contact">Contact Number</label>
<input id="contact" type="text" autofocus="true" name="contact">
<br>
<br>
<label for="email">Email ID<span style="color:red;">*</span></label>
<input id="email" type="text" autofocus="true" name="email">
<br>
<br>
<label for="age">Age<span style="color:red;">*</span></label>
<input id="age" type="text" autofocus="true" name="age">
<br>
<br>
<input type="submit" name="submit" value="SUBMIT">
<input type="reset" name="reset" value="RESET">
</fieldset>
</form>
</div>

<div class="header" style="background-color:#EEEEEE;height:480px;width:305px;float:right;"><br>
<aside><center>
 <img src="../images/amazon-prime-video-759.jpg" style="height:218px;width:270px;"><br><br>
<img src="../images/amazon-prime-video.jpg" style="height:218px;width:270px;">
  <p></p></center>
</aside><br>
</div>


<%!
// variable declarations
String id,uname, pwd,eid;
int cno=0, age=0;

%>

<%
if(request.getParameter("submit") != null)
{
	// get user name
	if(request.getParameter("userid") != null && request.getParameter("userid") != "")
	{
		id = request.getParameter("userid").toString();
	}
	else 
	{
		id = "";
	}
	
	
	// get password
	if(request.getParameter("Password") != null && request.getParameter("Password") != "")
	{
		pwd = request.getParameter("Password").toString();	
	}

	else 
	{
		pwd = "";
	}
	//get name
	if(request.getParameter("name") != null && request.getParameter("name") != "")
	{
		uname = request.getParameter("name").toString();
	}
	else 
	{
		uname = "";
	}
	//get emailid
	if(request.getParameter("email") != null && request.getParameter("email") != "")
	{
		eid = request.getParameter("email").toString();	
	}

	else 
	{
		eid = "";
	}
	//get contact no
	if(request.getParameter("contact") != null && request.getParameter("contact") != "")
	{
		cno= Integer.parseInt(request.getParameter("contact"));	
	}
	else 
	{
		cno = 0;
	}
	//get age
	if(request.getParameter("age") != null && request.getParameter("age") != "")
	{
		age= Integer.parseInt(request.getParameter("age"));	
	}
	else 
	{
		age = 0;
	}
	// Establish connection and check whether userid and password are correct or not
	if(JDBC1.createConnection())
	{
	
		
		//String sql1 = "insert into _user (\"userid\",\"password\",\"name\",\"emailid\",\"contactno\",\"age\") values('"+uid+"','"+pass+"','"+name+"','"+emailid+"','"+cnct+"','"+age+"');";
		
		Statement st1 = JDBC1.getStmt();
		
		int cnt = st1.executeUpdate("insert into _user values('"+id+"','"+pwd+"','"+uname+"','"+eid+"',"+cno+","+age+");");
		
		//int cnt=st1.executeUpdate("insert into _user values('10','aa','xx','@','11','20');");
		
	}
	%>
	<%
	if(id!=null && pwd!=null && uname!=null && eid!=null && cno!=0 && age!=0 )
			{
	%>
		<script>
			alert("Sign Up successfull")
			location.href="userLogin.jsp";
		</script>
	<% 		
	
			}	
	else
	{
		%>
		
		<script>
			alert("Sign Up NOT successfull")
			location.href="signUp.jsp";
		</script>
		
		<% 
	}
	
}
	%>


</body>
</html>



