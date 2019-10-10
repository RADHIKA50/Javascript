<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="Database.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*" %>
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


<script type="text/javascript">
function MyFunction(tid)
{
	alert(tid);
	var str = "confirmBooking.jsp?tourid=" + tid;
	//float f="confirmBooking.jsp?tamt=" +totalamount;
	alert(str);
	//alert(f);
	window.location.href="confirmBooking.jsp?tourid="+tid;
}
</script>
</head>
<body>


<div id="header" style="background-image:url(../images/Taj-Mahal-Wallpapers-HD-Pictures-32.jpg);height:450px;width:1400px;float:up;text-align:center;text-size:100px">


<h1>TOURS AND TRAVELS</h1><br>

<br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>

<div class="drop">
<ul class="drop_menu">
<li><a href='home.jsp'><i><b><font size=4>Home</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Contact Us</font></b></i></a>
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

<div id="Content" style="background-color:#EEEEEE;height:480px;width:945px;float:left;text-align:center">
<br><br>

<%!
// variable declarations
ResultSet rs = null;
String id,nm,des;
float samt,famt,bamt;
int ndays,nnights;

%>

<%
	
		//System.out.println(request.getParameter("hidaid"));
		// Establish connection and check whether userid and password are correct or not
		try
		{
		if(JDBC1.createConnection())
		{
			
			String sql =  "select * from tour";
			Statement st = JDBC1.getStmt();
			ResultSet rs = st.executeQuery(sql);
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
	<%		
		
			while(rs.next())
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
						<td><input type="button" value="book" onclick="MyFunction(<%= rs.getString(1) %>);"></td>
					</tr>
					
		<%
				}
	
		
			}
		}
	catch(Exception e)
	{
			System.out.println("error"+e);
	}
		
	%>
	</table>


</div>




<div class="header" style="background-color:#EEEEEE;
height:480px;width:300px;float:right;"><br>
<aside><center>
 <img src="../images/amazon-prime-video-759.jpg" style="height:218px;width:270px;"><br><br>
<img src="../images/amazon-prime-video.jpg" style="height:218px;width:270px;">
  <p></p></center>
</aside><br>
</div>

</body>
</html>

