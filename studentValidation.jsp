<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Login Page</title>
</head>
<body>
<%
String Username=request.getParameter("t1");
String Password=request.getParameter("t2");
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","gpsid");
PreparedStatement st = con.prepareStatement("select password from memb_regd where email = ?");
st.setString(1,Username);
ResultSet rs = st.executeQuery();
String password = null;
while(rs.next())
{


if(Password.equals(rs.getString(1)))
{
	session.setAttribute("user", Username);
	response.sendRedirect("Studenthom.jsp");
}
else
out.println("Login failed");
}
%>
</body>
</html>