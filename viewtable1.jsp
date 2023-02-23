<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grievance Box</title>
<style>
	tr,td,th{
		border:1px solid black;
		border-collapse:collapse;
	}
	table{
	width:100%;
	border:1px solid black;
	border-collapse:collapse;
	
	}
	a{
				background-color: white;
				color:black;
				border-radius: 100px;
				border:1px solid black;
				text-decoration: none;
				padding-top:10px;
				padding-left: 40px;
				padding-right:40px;
				padding-bottom:10px;
				
				margin-top: 60px;
				position: absolute;
			}
		a:hover{
			background-color:#B73B13;
			color: white;
			text-decoration: none;
			border:1px solid white;
		}
</style>
</head>
<body>
<h1 align="center">Grievance Box</h1>

<table>

<tr>
	<th>Name</th>
	<th>University</th>
	<th>College</th>
	<th>Branch</th>
	<th>Type</th>
	<th>Email</th>
	<th>Contact</th>
	<th>Detail Grievance</th>
</tr>
<% 
Integer i=0;
try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","gpsid");
			Statement st=conn.createStatement();
			 ResultSet rs=st.executeQuery("select * from table1");
			 while(rs.next())
			 {
			 %>
			 
			 	<tr>
			 		<td><%out.print(rs.getString(1)); %></td>
			 		<td><%out.print(rs.getString(2)); %></td>
			 		<td><%out.print(rs.getString(3)); %></td>
			 		<td><%out.print(rs.getString(4)); %></td>
			 		<td><%out.print(rs.getString(5)); %></td>
			 		<td><%out.print(rs.getString(6)); %></td>
			 		<td><%out.print(rs.getString(7)); %></td>
			 		<td><%out.print(rs.getString(8)); %></td>
			 		
			 	</tr>	
			 
			 
			 <%
			 }
			 %>
			 </table> <%
		}

		catch(Exception e)
		{
			System.out.print(e);
			e.printStackTrace();
		}




%>


</body>

</html>