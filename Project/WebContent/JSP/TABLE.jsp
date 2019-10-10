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

<form action="tourDetails.jsp" method="post">

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
<li><a href='aboutus.html'><i><b><font size=4>About Us</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Login</font></b></i></a>
<ul><li><a href='adminlogin.html'>Admin</a></li>
<li><a href='userlogin.html'>User</a></li>
</ul></li>
</ul> 
</div>
</div>

<!--  <div id="Content" style="background-color:#EEEEEE;height:480px;width:1055px;float:left;text-align:center">
<br><br>
</div>
</form>
-->

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
ResultSet rs = null;
String id,nm,des;
float samt=0,famt=0,bamt=0;
int ndays=0,nnights=0;
String s,s1,s2,s3,s4;
%>
  <div id="Content" style="background-color:white;height:480px;width:1055px;float:left;text-align:center">
<%
	
			
	if(request.getParameter("submit") != null)
	{
		// get user name
		if(request.getParameter("tid") != null && request.getParameter("tid") != "")
		{
			id = request.getParameter("tid").toString();
		}
		else 
		{
			id = "";
		}
		if(request.getParameter("tourname") != null && request.getParameter("tourname") != "")
		{
			nm = request.getParameter("tourname").toString();
		}
		else 
		{
			nm = "";
		}
		if(request.getParameter("description") != null && request.getParameter("description") != "")
		{
			des = request.getParameter("description").toString();
		}
		else 
		{
			des = "";
		}
		if(request.getParameter("stayamount") != null && request.getParameter("stayamount") != "")
		{
			 s=String.valueOf(samt);
			s = request.getParameter("stayamount");
		}
		else 
		{
			 s=String.valueOf(samt);
			System.out.println(""+s);
		}
		if(request.getParameter("foodamount") != null && request.getParameter("foodamount") != "")
		{

			 s1=String.valueOf(famt);
			s1 = request.getParameter("foodamount");
		}
		else 
		{
			 s1=String.valueOf(famt);
			System.out.println(""+s1);
		}
		if(request.getParameter("busamount") != null && request.getParameter("busamount") != "")
		{

			 s2=String.valueOf(bamt);
			s2 = request.getParameter("busamount");
		}
		else 
		{

			 s2=String.valueOf(bamt);
			System.out.println(""+s2);
		}
		if(request.getParameter("noofdays") != null && request.getParameter("noofdays") != "")
		{

			 s3=Integer.toString(ndays);
			s3 = request.getParameter(""+ndays);
		}
		else 
		{

			 s3=Integer.toString(ndays);
			System.out.println(""+s3);
		}
		if(request.getParameter("noofnights") != null && request.getParameter("noofnights") != "")
		{

			 s4=Integer.toString(ndays);
			s4 = request.getParameter(""+ndays);
		}
		else 
		{

			 s4=Integer.toString(ndays);
			System.out.println(""+s4);
		}
	
		// Establish connection and check whether userid and password are correct or not
		if(JDBC1.createConnection())
		{
			System.out.println("hi...");
			//Statement st1 = JDBC1.getStmt();
			
			//int rs1 = st1.executeUpdate(sql1);
			
			 sql =  "select * from tour where tid ='" + id + "' " + "and tourname = '" + nm +"'"+" and description= '" + des + "'"+" and stayammount='"+ s +"' "+" and foodamount='"+ s1 +"'"+" and busamount='"+ s2 +"' "+" and noofdays='"+ s3 +"' "+" and noofnights='"+ s4 +"';";
						
			System.out.println("sql :" + sql);
			Statement st = JDBC1.getStmt();
			
			 rs = st.executeQuery(sql);
			
		//	if(rs.isBeforeFirst())
		
	%>

	<% 
		// Establish connection and check whether userid and password are correct or not
		if(JDBC1.createConnection())
		{
			
			
			System.out.println("hi...");
			//Statement st1 = JDBC1.getStmt();
			
			//int rs1 = st1.executeUpdate(sql1);
			
			String sql =  "select * from tour where tid ='" + id + "' " + "and tourname = '" + nm +"'"+" and description= '" + des + "'"+" and stayammount='"+ s +"' "+" and foodamount='"+ s1 +"'"+" and busamount='"+ s2 +"' "+" and noofdays='"+ s3 +"' "+" and noofnights='"+ s4 +"';";
						
			System.out.println("sql :" + sql);
			Statement st = JDBC1.getStmt();
			
			ResultSet rs = st.executeQuery(sql);
			
		//	if(rs.isBeforeFirst())
		
	%>
			<table class="table table-striped">
    
				<tr>
				<th ><div align="center"># </div></th>
				<th><div align="center">Tour ID</div></th>
				<th><div align="center">Tour Name</div></th>
				<th><div align="center">Description</div></th>
				<th><div align="center">Stay Amount</div></th>
				<th><div align="center">Food Amount</div></th>
				<th><div align="center">Bus Amount</div></th>
				<th><div align="center">Number of Days</div></th>
				<th><div align="center">Number of Nights</div></th>
				</tr>		
	<%			while(rs.next())
				{
		
		%>
				
					<tr style="text-align:center">
						<td><%= rs.getString("tid")%></td>
						<td><%= rs.getString("tourname") %></td>
						<td><%= rs.getString("description") %></td>
						<td><%= rs.getFloat("stayamount") %></td>
						<td><%= rs.getFloat("foodamount") %></td>
						<td><%= rs.getFloat("busamount") %></td>
						<td><%= rs.getInt("noofdays") %></td>
						<td><%= rs.getInt("noofnights") %></td>
					</tr>
		<%     
				}}}
		%>
		   
		
	</table>
</div>
</body>
</html>





