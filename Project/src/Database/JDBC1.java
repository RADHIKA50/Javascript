package Database;

//public class JDBC1 {

//}
import java.sql.*;
import java.io.*;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
public class JDBC1 {
  //String JDBC_DRIVER="org.postgresql.Driver";
 // String DB_URl="jdbc:postgresql://192.168.0.2:5432/ty042";
 
  //String USER="userid";
 // String PASS="password";
	public  static Connection conn=null;
	public static Statement stmt=null;
	  
  public static boolean createConnection()
  {
	  boolean retval = false;
	 
	  try
	  {
		  Class.forName("org.postgresql.Driver");
		  System.out.println("Connecting to database");
		  conn=DriverManager.getConnection("jdbc:postgresql://localhost/postgres","postgres","chronin123");
		  System.out.println("Craeting database");
		  if(conn != null)
		  {
			  retval = true;
		  }
		  stmt=conn.createStatement();
		  
		  //String sql="create table stud(rollno int,name varchar(30))";
		  //stmt.executeUpdate(sql);
		  //System.out.println("database created successfully");
		 
	  }
	  catch(SQLException se)
	  {
		  se.printStackTrace();
	  }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 return retval;
  }
  
  
	public static Connection getConnection()
	{
		return conn;
	}
 

	public static Statement getStmt()
	{
		return stmt;
	} 
}
