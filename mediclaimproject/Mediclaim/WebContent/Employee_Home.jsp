<%@page import="mediclaim.Employee_Bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Employee Home</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Merriweather" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.rawgit.com/konpa/devicon/df6431e323547add1b4cf45992913f15286456d3/devicon.min.css">
 
<body>
<% Employee_Bean Bean_Data = (Employee_Bean)session.getAttribute("employee_bean");  
String E_Id = Bean_Data.getE_id();
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Mediclaim</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Claim_Registration.jsp">Register Claim</a> </li>
      <li><a href="Claim_History?Employee_Id=<%=E_Id%>">Claim History</a></li>
      <li><a href="Employee_Logout">Logout</a></li>
    
    </ul>
    
  </div>
  

</nav>

Welcome :
  <%


  String E_Fname =Bean_Data.getE_fname();
  String E_Lname =Bean_Data.getE_lname();
  String E_DOB =Bean_Data.getE_dob();
  String E_DOJ =Bean_Data.getE_doj();
  String E_Gender =Bean_Data.getE_gender();
  String E_Address =Bean_Data.getE_address();
  String E_Email =Bean_Data.getE_email();
  String E_Contact =Bean_Data.getE_contact();
  String E_Department =Bean_Data.getE_department();
  String E_Designation =Bean_Data.getE_designation();
  String E_Coverage =Bean_Data.getE_coverage();
  
  
  
  out.println(E_Fname);
  out.println(E_Lname);
  %>
  <br>
  <br>
  Employee Id : 
  <%
  out.println(E_Id);
  %>
  <br><br>
  Date of Birth : 
  <%
  out.println(E_DOB);
  %>
  <br><br>
  Date of Joining : 
  <%
  out.println(E_DOJ);
  %>
  <br><br>
  Gender : 
  <%
  out.println(E_Gender);
  %>
  <br><br>
  Address : 
  <%
  out.println(E_Address);
  %>
  <br><br>
  Email Address : 
  <%
  out.println(E_Email);
  %>
  <br><br>
  Contact No : 
  <%
  out.println(E_Contact);
  %>
  <br><br>
  Department : 
  <%
  out.println(E_Department);
  %>
  <br><br>
   Designation : 
  <%
  out.println(E_Designation);
  %>
  <br><br>
  Coverage Amount : 
  <%
  out.println(E_Coverage);
  
  
  %>
</body>
</html>