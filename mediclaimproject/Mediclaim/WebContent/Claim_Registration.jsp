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


<form action="Fetch_Claim.jsp" method="post">

<h2 >Claim Form</h2>
Employee Id:
<input type="text" name="Employee_Id"/><br><br>
Name :
<input type="text" name="Employee_Name"/><br><br>
Relation:
<input type="text" name="Employee_Relation"/><br><br>
Date of Admit:
<input type="Date" name="Admit_Date"/><br><br>
Date of Discharge:
<input type="Date" name="Discharge_Date"/><br><br>
Hospital Name:
<input type="text" name="Hospital_Name"/><br><br>
Doctor Name:
<input type="text" name="Doctor_Name"/><br><br>
Hospital Fees:
<input type="number" name="Hospital_Fees" id ="Hospital_Fees"/><br><br>
Pathology Fees:
<input type="number" name="Pathology_Fees" id ="Pathology_Fees"/><br><br>
Chemist fees:
<input type="number" name="Chemist_Fees" id = "Chemist_Fees"/><br><br>
Miscellaneous Fees:
<input type="number" name="Miscellaneous_Fees" id = "Miscellaneous_Fees"/><br><br>
Bill count:
<input type="number" name="Bill_Count" placeholder="Total No. of bills"/><br><br>
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