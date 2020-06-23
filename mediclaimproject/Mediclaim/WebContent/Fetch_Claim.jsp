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

String employee_name=request.getParameter("Employee_Name");

String employee_relation=request.getParameter("Employee_Relation");

String admit_date=request.getParameter("Admit_Date");

String discharge_date=request.getParameter("Discharge_Date");

String hospital_name=request.getParameter("Hospital_Name");

String doctor_name=request.getParameter("Doctor_Name");

String hospital_fees=request.getParameter("Hospital_Fees");

String pathology_fees=request.getParameter("Pathology_Fees");

String chemist_fees=request.getParameter("Chemist_Fees");

String miscellaneous_fees=request.getParameter("Miscellaneous_Fees");

String bill_count=request.getParameter("Bill_Count");

String total_amount=request.getParameter("Total_Amount");
%>

<%
	try{ int claim_count =1;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim", "root" ,"root");
	PreparedStatement  cc = con.prepareStatement("Select claim_count from claim_detail where Employee_Id = ? ");
	cc.setString(1,employee_id);
	ResultSet rs = cc.executeQuery();
	while(rs.next()){
		
		claim_count = claim_count +1;
		
		
	}
	
	
	

	PreparedStatement ps = con.prepareStatement("insert into claim_detail values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

	ps.setString(1,employee_id);
	ps.setString(2,employee_name);
	ps.setString(3,employee_relation);
	ps.setString(4,admit_date);
	ps.setString(5,discharge_date);
	ps.setString(6,hospital_name);
	ps.setString(7,doctor_name);
	ps.setString(8,hospital_fees);
	ps.setString(9,pathology_fees);
	ps.setString(10,chemist_fees);
	ps.setString(11,miscellaneous_fees);
	ps.setString(12,bill_count);
	ps.setString(13,total_amount);
	ps.setInt(14,claim_count);
	ps.setString(15,"Submitted");

	ps.executeUpdate();
	 

	} catch (Exception e) {
		e.printStackTrace();
	
		
	}
%>	
		

</body>
</html>