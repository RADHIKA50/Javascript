<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="Database.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import ="java.sql.Connection"%>
<%@ page import=" java.sql.SQLException"%>
<%@ page import ="java.sql.Statement"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="../stylesheets/loginPage.css" />
<link rel="stylesheet" type="text/css" href="../stylesheets/menu.css" />

</head>
<body>

<form action="addPackage.jsp" method="post">

<div id="header" style="background-image:url(../images/Taj-Mahal-Wallpapers-HD-Pictures-32.jpg);height:450px;width:1400px;float:up;text-align:center;text-size:100px">
<h1>TOURS AND TRAVELS</h1>

<br>
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

<li><a href='#'><i><b><font size=4>Admin Options</font></b></i></a>
<ul><li><a href='addPackage.jsp'>Add Tour Package</a></li>
<li><a href='packageDetails.jsp'>Package Details</a></li>
<li><a href='viewBooking.jsp'>Booking Details</a></li>
<li><a href='userDetails.jsp'>User Details</a></li>
</ul></li>
</ul> 
</div>


</div>



<div id="Content" style="background-color:#EEEEEE;height:700px;width:940px;float:left;text-align:center">
<br><br>
<h2>ADD TOUR PACKAGE</h2>
<br>

<fieldset id="login">
<i>
Tour id&nbsp;<input type="text" name="tid" required><br><br>
Package Name&nbsp;<input type="text" name="tname" required><br><br>
Description&nbsp;<textarea name="des" rows=3 columns=5></textarea><br><br>
Stay amount&nbsp;<input type="text" name="samount" required><br><br>
Food amount&nbsp;<input type="text" name="famount" required><br><br>
Bus amount&nbsp;<input type="text" name="bamount"   required><br><br>
Total amount&nbsp;<input type="text" name="tamount"  required><br><br>
No of days<select name="ndays" required>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
</select>

No of Nights<select name="nnights" required>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
</select>
<br><br>
<!--  <div class="uploadFile">
<label for="upload8tn" class="uploadbtnlabel">Add Image</label>
<input type="file" name="upload" id="upload8tn">
</div>
<br><br>
-->
<input type="submit" name="submit" value="Submit">
<input type="reset" name="reset" value="Reset">
</i>
</fieldset>

</div>
<%!
String nm,des;
float samt,famt,bamt,tamt;
int id,ndays,nnights;

%>


<%
	
//variable declarations



	if(request.getParameter("submit") != null)
	{
		// get user name
		if(request.getParameter("tid") != null && request.getParameter("tid") != "")
		{
			id = Integer.parseInt(request.getParameter("tid"));
		}
		else 
		{
			id =0;
			//System.out.println(""+id);
		}
		
		if(request.getParameter("tname") != null && request.getParameter("tname") != "")
		{
			nm = request.getParameter("tname").toString();
		}
		else 
		{
			nm = "";
		}
		if(request.getParameter("des") != null && request.getParameter("des") != "")
		{
			des = request.getParameter("des").toString();
		}
		else 
		{
			des = "";
		}
		if(request.getParameter("samount") != null && request.getParameter("samount") != "")
		{
			 samt=Float.parseFloat(request.getParameter("samount"));
		}
		else
		{
			samt=0;
			
		}
		if(request.getParameter("famount") != null && request.getParameter("famount") != "")
		{
			famt=Float.parseFloat(request.getParameter("famount"));
		}
		else 
		{
			famt=0;
		}
		if(request.getParameter("bamount") != null && request.getParameter("bamount") != "")
		{
			bamt=Float.parseFloat(request.getParameter("bamount"));
		}
		else 
		{
			bamt=0;
			
		}
		if(request.getParameter("tamount") != null && request.getParameter("tamount") != "")
		{
			tamt=Float.parseFloat(request.getParameter("tamount"));
		}
		else 
		{
			tamt=0;
			
		}
		if(request.getParameter("ndays") != null && request.getParameter("ndays") != "")
		{

			 ndays=Integer.parseInt(request.getParameter("ndays"));
		}
		else 
		{
			 ndays=0;
		}
	
		if(request.getParameter("nnights") != null && request.getParameter("nnights") != "")
		{
			nnights=Integer.parseInt(request.getParameter("nnights"));
		}
		else 
		{
			nnights=0;
		}
	
		// Establish connection and check whether userid and password are correct or not
		if(JDBC1.createConnection())
		{
			//System.out.println("hi...");
			
			JDBC1.getConnection();
			System.out.println("connection successfull");
			Statement st = JDBC1.getStmt();
			//System.out.println("hey");
			//String sql="insert into tour values ( " + id + " , '" + nm +"' ,'" + des + "' ,"+ samt +" ,"+ famt +" ,"+ bamt +" ,"+ ndays +","+ nnights +")";
			//ResultSet res=null;
		 	//out.println(sql);
			int cnt = st.executeUpdate("insert into tour values ( " + id + " , '" + nm +"' ,'" + des + "' ,"+ samt +" ,"+ famt +" ,"+ bamt +","+ tamt +" ,"+ ndays +","+ nnights +");");			
			if(cnt > 0)
			{
				%>
					<script>
						alert("Package added successfuly")
						location.href="packageDetails.jsp";
					</script>
				<%
			}
			else
			{
				%>
				<script>
					alert("Failed to add package.")
					location.href="addPackage.jsp";
				</script>
			<%
			}
		}
	}
	%>



<div class="header" style="background-color:#EEEEEE;
height:700px;width:305px;float:right;"><br>
<aside><center>
 <img src="../images/amazon-prime-video-759.jpg" style="height:218px;width:270px;"><br><br>
<img src="../images/amazon-prime-video.jpg" style="height:218px;width:270px;">
  <p></p></center>
</aside><br>
</div>

</form>

</body>
</html>

