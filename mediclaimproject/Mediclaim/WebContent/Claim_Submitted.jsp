<%@page import="mediclaim.Claim_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
     
     <%@page import="java.util.ArrayList"%>
      <%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Claim List</title>
</head>
<body>
<%
try{

  
 ArrayList Claim_Data =(ArrayList)session.getAttribute("claim_data");
 
 %><table border="1">
<tr> <th>Employee Id</th>
  <th>Name</th>
  <th>Admit Date</th>
  <th>Discharge Date</th>
  <th>Hospital Name</th>
  <th>Bill Count</th>
  <th>Total Amount</th>
  <th>Claim Count</th>
        </tr>
 <%
 for(int i =0 ; i<=Claim_Data.size();i++)
 {
	 
 Claim_Bean Bean_Data = (Claim_Bean)Claim_Data.get(i); %>
 <tr>
  <td align="center"><%out.println(Bean_Data.getE_id());%></td>
  
  <td><%  out.println(Bean_Data.getE_name());%></td>
 
  <td><% out.println(Bean_Data.getAdmit_date());%></td>
	
  <td><%out.println(Bean_Data.getDischarge_date());%></td>

  <td><% out.println(Bean_Data.getHospital_name());%></td>
	
  <td><% out.println(Bean_Data.getBill_count());%></td>
	
  <td><% out.println(Bean_Data.getTotal_amount());%></td>

  <td><%out.println(Bean_Data.getClaim_count());%></td>
 <td> <a href="View_Claim?E_Id=<%=Bean_Data.getE_id()%>&Claim_No=<%=Bean_Data.getClaim_count()%>">View</a></td>
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