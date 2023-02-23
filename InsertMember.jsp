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
String university=request.getParameter("university");
String college=request.getParameter("clg_name");
String department=request.getParameter("depart");
String email=request.getParameter("email");
String password=request.getParameter("password");
String contact_no=request.getParameter("contact");

Integer i=0;
try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","gpsid");
			Statement st=conn.createStatement();

			 i=st.executeUpdate("insert into memb_regd values('"+university+"','"+college+"','"+department+"','"+email+"','"+password+"',"+contact_no+")");
			if(i==1)
			response.sendRedirect("LoginMember.html");
		}
		catch(Exception e)
		{
			System.out.print(e);
			e.printStackTrace();
		}
%>
</body>
</html>