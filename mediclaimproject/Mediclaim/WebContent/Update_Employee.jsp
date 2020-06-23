<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="mediclaim.Employee_Bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% Employee_Bean Bean_Data = (Employee_Bean)session.getAttribute("update_employee");  
String E_Id = Bean_Data.getE_id();
%>


<form action="Employee_Form_Controller" method="post">

<h2 >Update Employee Detail </h2>
Employee Id:
<input type="text" name="Employee_Id" value=<%=Bean_Data.getE_id() %> readonly/><br><br>
First Name : 
<input type="text" name="Employee_FName"  value=<%=Bean_Data.getE_fname() %> required><br><br>
Last Name : 
<input type="text" name="Employee_LName" value=<%=Bean_Data.getE_lname() %> required><br><br>

Date of Birth  :  
 <input type="date" name="Employee_DOB" value=<%=Bean_Data.getE_dob() %>><br><br>
 Date of Joining : 
<input type="date" name="Employee_DOJ" value=<%=Bean_Data.getE_doj() %> ><br><br>
Gender : 
<input type="text" name="Employee_Gender"  value=<%=Bean_Data.getE_gender() %>><br><br>
Address: 
<input type="text" name="Employee_Address" value=<%=Bean_Data.getE_address() %> ><br><br>
Email : 
<input type="Email" name="Employee_Email" value=<%=Bean_Data.getE_email() %> placeholder="abc123@gmail.com"><br><br>

Contact No. :
<input type="number" name="Employee_Contact" value=<%=Bean_Data.getE_contact() %> required><br><br>
Department : 
<input type="text" name="Employee_Department" value=<%=Bean_Data.getE_department() %> required><br><br>

Designation : 
<input type="text" name="Employee_Designation" value=<%=Bean_Data.getE_designation() %> required><br><br>
Coverage : 
<input type="tel" name="Employee_Coverage" value=<%=Bean_Data.getE_coverage() %> required><br><br>

<button type="Submit">Update</button>


</div>
</form>


</body>
</html>