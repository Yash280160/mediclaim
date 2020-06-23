<%@page import="mediclaim.Employee_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Validation</title>
</head>
<body>
<%
// Fetching Data From Employee Login Form
String employee_id=request.getParameter("Employee_Id");
String employee_password=request.getParameter("Employee_Password");
%>
<%
//Creating Connection With Database
try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim","root","root");
	PreparedStatement ps =con.prepareStatement("select * from employee_detail where Employee_Id=? and Employee_Password=?");
	
	ps.setString(1,employee_id);
	ps.setString(2,employee_password);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		
		String e_id  =rs.getString("Employee_Id");         //column name of table
		String e_fname =rs.getString("Employee_FName");  //column name of table
		String e_lname =rs.getString("Employee_LName"); 
		String e_dob =rs.getString("Employee_DOB");
		String e_doj =rs.getString("Employee_DOJ");
		String e_gender  =rs.getString("Employee_gender");
		String e_address  =rs.getString("Employee_address");
		String e_email =rs.getString("Employee_Email");
		String e_contact =rs.getString("Employee_Contact");
		String e_department =rs.getString("Employee_Department");
		String e_designation =rs.getString("Employee_Designation");
		String e_coverage =rs.getString("Employee_Coverage");
		String e_password  =rs.getString("Employee_Password");
		Employee_Bean eb=new Employee_Bean();
		
        eb.setE_id(e_id);
        eb.setE_fname(e_fname);
        eb.setE_lname(e_lname);
        eb.setE_dob(e_dob);
        eb.setE_doj(e_doj);
        eb.setE_gender(e_gender);
        eb.setE_address(e_address);
        eb.setE_email(e_email);
        eb.setE_contact(e_contact);
        eb.setE_department(e_department);
        eb.setE_designation(e_designation);
        eb.setE_coverage(e_coverage);
        eb.setE_password(e_password);
        
		
		session.setAttribute("employee_bean",eb); //("key" , value);
		
		
	RequestDispatcher rd=request.getRequestDispatcher("Employee_Home.jsp");
	rd.forward(request,response);
		
	}
	else
	{
		RequestDispatcher rd=request.getRequestDispatcher("Employee_Login.jsp");
		request.setAttribute("error" , "Invalid User ID or Password");
		rd.forward(request,response);	
	}
	
	
}catch(Exception e)
{
	e.printStackTrace();
	
}




%>
</body>
</html>