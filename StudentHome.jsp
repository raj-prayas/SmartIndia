<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Complaint Form</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<style type="text/css">
		#div1{
			width: 750px;
			height: 700px;
			margin-left: 400px;
			background-color:white; 
			position: relative;
			margin-top:-1100px;
			border:1px solid brown;
			border-radius: 100px;
		}

		#div2{
			position: relative;
			width: 300px;
			height:478px;
		}
		a{
				background-color: rgb(224, 107, 38);color:black;
				border-radius: 100px;
				border:1px solid black;
				text-decoration: none;
				padding-top:10px;
				padding-left: 40px;
				padding-right:40px;
				padding-bottom:10px;
				margin-left: 90px;
				margin-top: 260px;
				position: absolute;
			}
		a:hover{
			background-color:#B73B13;
			color: white;
			text-decoration: none;
			border:1px solid white;
		}
		table, th, td {
 			 border: 1px solid #B73B13;
			 padding: 15px;
  			 text-align: centre;
	        }

	</style>
</head>
<body>
				
Integer i=0;
try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","gpsid");
			Statement st=conn.createStatement();
			 ResultSet rs=st.executeQuery("select details from table1 where email=?");
			 while(rs.next())
			 {
				 
			 }
%>
	<img src="books.jpg" alt="pencil" style="width:100%;height:1200px;background-repeat: no-repeat;">
	<div id="div1">

		
			<form action="" method="post" style="margin-left: 100px;margin-right:100px;margin-top:100px;position: relative;margin-top: 10px;">
				<h1 style="font-family: cursive;color:#B73B13">WELCOME StudentName!!!</h1>
				<br><br>

				  <table style="width:100%">
					 <tr>
						<th><h2>Grievance</h2></th>
						<th><h2>Status</h2></th>
				 </tr>
				 <tr>
						<td></td>
						<td></td>
				 </tr>
				 <tr>
						<td></td>
						<td></td>
				 </tr>
				 <tr>
						<td></td>
						<td></td>
				 </tr>

			</table>
			<a href="complaintform.html" ><h3>POST COMPLAINT</h3></a>
			 }
			 
		}
		

catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}

%>
				


				
			</form>
		
	</div>
</body>
</html>