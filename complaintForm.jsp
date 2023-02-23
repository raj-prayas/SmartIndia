<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<% 
String name=request.getParameter("name");
String university=request.getParameter("university");
String college=request.getParameter("college");
String branch=request.getParameter("branch");
String type=request.getParameter("type");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String details=request.getParameter("details");


Integer i=0;
try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","gpsid");
			Statement st=conn.createStatement();

			 i=st.executeUpdate("insert into table1 values('"+name+"','"+university+"','"+college+"','"+branch+"','"+type+"','"+email+"',"+contact+",'"+details+"')");
			 if(i==1)
				 response.sendRedirect("Successful.html");
		}
		catch(Exception e)
		{
			System.out.print(e);
			e.printStackTrace();
		}
%>
</body>
</html>