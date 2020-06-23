<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     
<%@page import="mediclaim.Claim_Bean"%>
     <%@page import="java.util.ArrayList"%>
      <%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Claim_Bean Bean_Data = (Claim_Bean)session.getAttribute("claim_update");
%>
<div class = "Registration" style=" text-align: center; margin-top: 100px;">


<form action="Claim_Form_Controller?empid=<%=Bean_Data.getE_id()%>&Claim_No=<%=Bean_Data.getClaim_count()%>" method="post">

<h2 >Claim Form</h2>
Employee Id:
<input type="text" name="Employee_Id" value=<%=Bean_Data.getE_id()%>/><br><br>
Name :
<input type="text" name="Employee_Name" value=<%=Bean_Data.getE_name()%>/><br><br>
Relation:
<input type="text" name="Employee_Relation" value=<%=Bean_Data.getE_relation()%>/><br><br>
Date of Admit:
<input type="Date" name="Admit_Date" value=<%=Bean_Data.getAdmit_date() %>/><br><br>
Date of Discharge:
<input type="Date" name="Discharge_Date" value=<%=Bean_Data.getDischarge_date() %>/><br><br>
Hospital Name:
<input type="text" name="Hospital_Name" value=<%=Bean_Data.getHospital_name() %>/><br><br>
Doctor Name:
<input type="text" name="Doctor_Name" value=<%=Bean_Data.getDoctor_name()%>/><br><br>
Hospital Fees:
<input type="number" name="Hospital_Fees" id ="Hospital_Fees" value=<%=Bean_Data.getHospital_fees() %>/><br><br>
Pathology Fees:
<input type="number" name="Pathology_Fees" id ="Pathology_Fees" value=<%=Bean_Data.getPathology_fees()%>/><br><br>
Chemist fees:
<input type="number" name="Chemist_Fees" id = "Chemist_Fees" value=<%=Bean_Data.getChemist_fees() %>/><br><br>
Miscellaneous Fees:
<input type="number" name="Miscellaneous_Fees" id = "Miscellaneous_Fees" value=<%=Bean_Data.getMiscellaneous_fees() %>/><br><br>
Bill count:
<input type="number" name="Bill_Count" placeholder="Total No. of bills" value=<%=Bean_Data.getBill_count()%>/><br><br>
Total Amount:
<input type="number" name="Total_Amount" id = "Total_Amount" onclick = "add()" placeholder ="Click for Add" readonly/><br><br>
<button type="Submit">Register</button>
<button type="reset">Clear</button>
<script>
function add()
{
	var hospital = document.getElementById("Hospital_Fees").value;
	var pathology = document.getElementById("Pathology_Fees").value;
	var chemist = document.getElementById("Chemist_Fees").value;
	var miscellaneous = document.getElementById("Miscellaneous_Fees").value;
	var sum = parseInt(hospital) + parseInt(pathology) + parseInt(chemist) + parseInt(miscellaneous);
	
	document.getElementById("Total_Amount").value = sum;	}
 </script>
</div>
</form>
</body>
</html>