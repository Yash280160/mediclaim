<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Employee Login</title>
</head>
<body>

<form name="loginForm" method="post" action="Employee_Validation.jsp" style="margin-top:100px;">
<table width="20%"  align="center">

<tr>
<td colspan=2><center><font size=4><b>Employee Login</b></font></center></td>
</tr>
<%String msd=(String)request.getAttribute("error");
if(msd!=null)
{
	%>
	<div class ="error" style=" text-align: center;color: red;"><font size=0.6><%=msd %></div>
	 <%
}

%>


<tr>
<td>Employee ID</td>
<td><input type="text" size=25 name="Employee_Id" required placeholder="Type ID here"></td>
</tr>

<tr>
<td>Password:</td>
<td><input type="Password" size=25 name="Employee_Password" required"></td>
</tr>

<tr>
<td ><input type="Reset"></td>
<td><input type="submit" onclick="return check(this.form)" value="Login"></td>
</tr>

</table>
</form>


</body>
</html>