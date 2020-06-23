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
<title>Insert title here</title>
</head>
<body>
<%String update=(String)session.getAttribute("update");
%>
<script>
	
	if(update!=null)
	{

alert("update");
	}
</script>
	

<%try{
	Employee_Bean ebv = (Employee_Bean)session.getAttribute("employee_view");  
	out.println(ebv.getE_id());
	%><br><br><%
	out.println(ebv.getE_fname());
	%><br><br><%
	out.println(ebv.getE_lname());
	%><br><br><%
	out.println(ebv.getE_dob());
	%><br><br><%
	out.println(ebv.getE_doj());
	%><br><br><%
	out.println(  ebv.getE_gender());
	%><br><br><%out.println(ebv.getE_address());
	
	out.println(ebv.getE_email());
	%><br><br><%
	out.println(ebv.getE_contact());
	%><br><br><%
	out.println(ebv.getE_department());
	%><br><br><%
	out.println(ebv.getE_designation());
	%><br><br><%
	out.println(ebv.getE_coverage());
	 %>
	 <br>
	 

  


  <br>
  <a href="Update_Employee?empid=<%=ebv.getE_id()%>"><button>update</button></a>
  <%

}
catch(Exception e)
{

	e.printStackTrace();
	
	
}
	
	
%>
 
</body>
</html>