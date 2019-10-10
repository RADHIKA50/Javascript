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
<li><a href='home.jsp'><i><b><font size=4>Home</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Contact Us</font></b></i></a>
</li>
<li><a href='aboutUs.jsp'><i><b><font size=4>About Us</font></b></i></a>
</li>
<li><a href='#'><i><b><font size=4>Login</font></b></i></a>
<ul><li><a href='adminlogin.jsp'>Admin</a></li>
<li><a href='userlogin.jsp'>User</a></li>
</ul></li>
<li><a href='#'><i><b><font size=4>User Options</font></b></i></a>
<ul><li><a href='viewPlace.jsp'>View Place</a></li>
<li><a href='cancelBooking.jsp'>Cancel Booking</a></li>
<li><a href='home.jsp'>Logout</a></li>
</ul></li>
</ul> 
</div>
</div>


<div id="Content" style="background-color:#EEEEEE;height:450px;width:1020px;float:left;text-align:center">

<%!
//String id;
int persons;
%>

<%
System.out.println(request.getParameter("tourid"));
char id=request.getParameter("tourid");
System.out.println("welcome");
//String fl=request.getParameter("totalamount");

%>
<%
// Establish connection and check whether userid and password are correct or not
		if(JDBC1.createConnection())
		{
			out.println("Your selected tour is: '"+ id +"' " );
			//out.println("Your selected tour is: '"+ fl +"' " );
			String s="select tourname from tour where tid= ' "+ id +" ' ";
			Statement st1 = JDBC1.getStmt();
			ResultSet rs1 = st1.executeQuery(s);
			//String r=rs1.getString(6);
			rs1.getFloat(1);
			//out.println("Your selected tour is:'"+ rs1 + " ' ");
			
			
			
      // create 2 int primitives i1, i2
      //int i1, i2;

      // assign numeric values of ch1, ch2 to i1, i2
      //i1 = Character.getNumericValue(id);
    //  i2 = Character.getNumericValue(ch2);

      //String str1 = "Numeric value of " + id + " is " + i1;
     // String str2 = "Numeric value of " + ch2 + " is " + i2;

      // print i1, i2 values
      //System.out.println( str1 );
      //System.out.println( str2 );
			
			
			
			
			%>
		
			<br><br>
			Enter no of persons<input type="text" name="person" ><br>
			<input type="submit" name="submit" value="Submit">
			
			
			<%
			

		if(request.getParameter("persons") != null && request.getParameter("persons") != "")
		{
			persons = Integer.parseInt(request.getParameter("persons"));
	
		}
		else 
		{
		 	persons=0;
		}	
			
			
			String sql =  "select * from tour where tid= '"+ id +"' ";
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
				<th><div align="center";>Food Amount</div></th>
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