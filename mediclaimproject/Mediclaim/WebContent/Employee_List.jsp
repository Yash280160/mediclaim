<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import="java.sql.*" %>
     <%@page import="javax.swing.JSpinner"%>
<%@page import="mediclaim.Employee_Bean"%>
     <%@page import="java.util.ArrayList"%>
      <%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee List</title>
</head>
<body>

<%
try{


  
 ArrayList Employee_List =(ArrayList)session.getAttribute("employee_bean");
 
 %><table border="1">

 <%
 

	%>
	<tr>
	<th>Employee Id</th>
	<th>Employee Name</th>
	</tr>
	<%
	
 for(int i =0 ; i<=Employee_List.size();i++)
 {
	 
	 Employee_Bean ebl = (Employee_Bean)Employee_List.get(i);  
   %>
 <tr>

  <td><%out.println(ebl.getE_id());%></td>
  <td><%out.println(ebl.getE_fname());
  out.println(ebl.getE_lname());%></td>
  <td> <a href="View_Employee?E_ID=<%=ebl.getE_id()%>">View</a></td>


</tr>	

<%

 }
 %>
 </table>
  <br>
  <%

}
catch(Exception e)
{

	e.printStackTrace();
	
	
}
	
	
%>
 
</body>
</html>