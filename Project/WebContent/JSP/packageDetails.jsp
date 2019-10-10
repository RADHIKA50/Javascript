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
<li><a href='#'><i><b><font size=4>Logout</font></b></i></a>
<ul><li><a href='adminlogin.html'>Admin</a></li>
<li><a href='userlogin.html'>User</a></li>
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


<%!
// variable declarations
ResultSet rs = null;
String id,nm,des;
float samt,famt,bamt;
int ndays,nnights;
//String s,s1,s2,s3,s4;
%>

<%
	
	
		// Establish connection and check whether userid and password are correct or not
		if(JDBC1.createConnection())
		{
			
			String sql =  "select * from tour";
			Statement st = JDBC1.getStmt();
			ResultSet rs = st.executeQuery(sql);
			
		//	if(rs.isBeforeFirst())
		
	%>
			<table border=1>
    
				<tr>
				<th><div align="center">Tour ID</div></th>
				<th><div align="center">Tour Name</div></th>
				<th><div align="center">Description</div></th>
				<th><div align="center">Stay Amount</div></th>
				<th><div align="center">Food Amount</div></th>
				<th><div align="center">Bus Amount</div></th>
				<th><div align="center">Total Amount</div></th>
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
						<td><%= rs.getInt("totalamount") %></td>
						<td><%= rs.getInt("noofdays") %></td>
						<td><%= rs.getInt("noofnights") %></td>
					</tr>
		<%     
				}
		}
		%>
			
	</table>



</div>
</form>

<div class="header" style="background-color:#EEEEEE;
height:480px;width:273px;float:right;"><br>
<aside><center>
 <img src="../images/amazon-prime-video-759.jpg" style="height:218px;width:270px;"><br><br>
<img src="../images/amazon-prime-video.jpg" style="height:218px;width:270px;">
  <p></p></center>
</aside><br>
</div>




</body>
</html>





