<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>
		Add_Employee
	</title>
</head>
<body>
<div class = "Registration" style=" text-align: center; margin-top: 100px;">
<form action="Fetch_Registration.jsp" method="post">
<div class="key">

<hr>
</div>
<h2 >Registration Form</h2>
Employee Id : 
<input type="text" name="Employee_Id" required><br><br>

First Name : 
<input type="text" name="Employee_FName" required><br><br>
Last Name : 
<input type="text" name="Employee_LName" required><br><br>

Date of Birth  :  
<input type="date" name="Employee_DOB"><br><br>
Date of Joining : 
<input type="date" name="Employee_DOJ" ><br><br>
Gender : 
<input type="text" name="Employee_Gender" ><br><br>
Address: 
<input type="text" name="Employee_Address" ><br><br>
Email : 
<input type="Email" name="Employee_Email" placeholder="abc123@gmail.com"><br><br>

Contact No. :
<input type="number" name="Employee_Contact" required><br><br>
Department : 
<input type="text" name="Employee_Department" required><br><br>

Designation : 
<input type="text" name="Employee_Designation" required><br><br>
Coverage : 
<input type="tel" name="Employee_Coverage" required><br><br>

<input type="Submit" value = "Submit"/>
<button type="reset">Clear</button>

</form>
</div>
</body>
</html>