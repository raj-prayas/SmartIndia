<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>GrievanceStudentRegister</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<style type="text/css">
		#div1{
			width: 850px;
			height: 480px;
			margin-left: 350px;
			background-color:white; 
			position: relative;
			margin-top:-600px;
			border:1px solid brown;
			border-radius: 100px;
		}

		#div2{
			position: relative;
			width: 300px;
			height:478px;
		}
		a{
			background-color: white;color:black;border-radius: 100px;border:1px solid black;text-decoration: none;padding-top:10px;padding-left: 40px;padding-right:40px;padding-bottom:10px;margin-left: 90px;margin-top: 260px;position: absolute;
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
	<img src="books.jpg" alt="pencil" style="width:100%;height:731px;background-repeat: no-repeat;">
	<div id="div1">
		<div id="div2" style="background-color:#B73B13;border-top-left-radius: 100px;border-bottom-left-radius: 100px;">
			<h1 style="margin-top:200px;margin-left:50px;position:absolute;font-family: cursive;color:white;">Welcome Student</h1>
			<a id="a1" href="RegisterStudent.jsp">SIGN UP !</a>

		</div>


		
		<form action="" method="post" style="margin-left: 400px;margin-right:100px;margin-top:30px;position: relative;margin-top: -380px;">
			<h1 style="font-family: cursive;color:#B73B13">STUDENT LOGIN</h1>
			<div class="input-group flex-nowrap">
			
				<input type="text" class="form-control" placeholder="Student Name" name="name" aria-describedby="addon-wrapping" required>
			</div>



			<div class="input-group flex-nowrap">
				
				<input type="text" class="form-control" placeholder="university" name="university" aria-describedby="addon-wrapping" required>
			</div>



			<div class="input-group flex-nowrap">
				
				<input type="text" class="form-control" placeholder="college" name="college" aria-describedby="addon-wrapping" required>
			</div>



			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<label class="input-group-text" for="inputGroupSelect01">Department/Branch</label>
				</div>
				<select class="custom-select" id="inputGroupSelect01" name="branch">
					<option selected>Choose...</option>
					<option value="1">CSE</option>
					<option value="2">ETC</option>
					<option value="3">CIVIL</option>
					<option value="3">MECHANICAL</option>
					<option value="3">EE</option>
					<option value="3">EEE</option>
					<option value="3">MBA</option>
					<option value="3">MCA</option>
					<option value="3">BBA</option>
					<option value="3">BIOTECH</option>
					<option value="3">IT</option>
				</select>
			</div>



			<input type="radio" name="gender" value="male"> Male
			<input type="radio" name="gender" value="female"> Female



<br>
			<div class="input-group flex-nowrap">
			
				<input type="number" class="form-control" placeholder="Registration number" name="regno" aria-describedby="addon-wrapping" required>
			</div>




			<div class="input-group flex-nowrap">
				
				<input type="number" class="form-control" placeholder="Contact number" name="phone" aria-describedby="addon-wrapping" required>
			</div>



			<div class="input-group flex-nowrap">
			
				<input type="email" class="form-control" placeholder="Email Id" name="email" aria-describedby="addon-wrapping" required>
			</div>

			<button type="submit" class="btn btn-primary" style="margin-left: 100px;margin-top: 30px;">SIGN IN</button>

		</form>
		<%
		String name=request.getParameter("name");
		String university =request.getParameter("university");
		String college=request.getParameter("college");
		String branch=request.getParameter("branch");
		String gender=request.getParameter("gender");
		String regno=request.getParameter("regno");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/test", "root", "");
			Statement st=conn.createStatement();

			int i=st.executeUpdate("insert into studentregister(name,university,college,branch,gender,regno,phone,email)values('"+name+"','"+university+"','"+college+"','"+branch+"','"+gender+"',"+regno+","+phone+",'"+email+"')");
			out.println("Data is successfully inserted!");
		}
		catch(Exception e)
		{
			System.out.print(e);
			e.printStackTrace();
		}
		%>
		
	</div>
</body>
</html>