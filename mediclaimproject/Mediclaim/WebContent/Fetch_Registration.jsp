<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	

String employee_id=request.getParameter("Employee_Id");

String employee_fname=request.getParameter("Employee_FName");

String employee_lname=request.getParameter("Employee_LName");

String employee_dob=request.getParameter("Employee_DOB");

String employee_doj=request.getParameter("Employee_DOJ");

String employee_gender=request.getParameter("Employee_Gender");

String employee_address=request.getParameter("Employee_Address");

String employee_email=request.getParameter("Employee_Email");

String employee_contact=request.getParameter("Employee_Contact");

String employee_department=request.getParameter("Employee_Department");

String employee_designation=request.getParameter("Employee_Designation");

String employee_coverage=request.getParameter("Employee_Coverage");
%>

<%
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim", "root" ,"root");
	PreparedStatement ps = con.prepareStatement("insert into employee_detail values (?,?,?,?,?,?,?,?,?,?,?,?,1234)");
	ps.setString(1,employee_id);
	ps.setString(2,employee_fname);
	ps.setString(3,employee_lname);
	ps.setString(4,employee_dob);
	ps.setString(5,employee_doj);
	ps.setString(6,employee_gender);
	ps.setString(7,employee_address);
	ps.setString(8,employee_email);
	ps.setString(9,employee_contact);
	ps.setString(10,employee_department);
	ps.setString(11,employee_designation);
	ps.setString(12,employee_coverage);
	 ps.executeUpdate();
	 

	} catch (Exception e) {
		e.printStackTrace();
	
		
	}
%>	
		



</body>
</html>



		