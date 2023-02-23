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
String college=request.getParameter("clg_name");
String branch=request.getParameter("branch");
String regd_no=request.getParameter("regd_no");
String birth=request.getParameter("date");
String email=request.getParameter("email");
String password=request.getParameter("password");
String contact=request.getParameter("contact");
String gender=request.getParameter("gender");
Integer i=0;
try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","gpsid");
			Statement st=conn.createStatement();

			 i=st.executeUpdate("insert into stud_regd values('"+name+"','"+university+"','"+branch+"',"+regd_no+",'"+birth+"','"+email+"','"+password+"',"+contact+",'"+gender+"','"+college+"')");
			 if(i==1)
				 response.sendRedirect("LoginStudent.html");
		}
		catch(Exception e)
		{
			System.out.print(e);
			e.printStackTrace();
		}
%>
</body>
</html>