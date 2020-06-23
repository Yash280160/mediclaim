<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="mediclaim.Claim_Bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Claim_Bean view_claim = (Claim_Bean)request.getAttribute("view_claim"); 
%>
<br>
Employee Id :

<%out.println(view_claim.getE_id());%>
<br>
Employee Name :
<%out.println(view_claim.getE_name());%>
<br>
Employee Relation :
<%out.println(view_claim.getE_relation());%>
<br>
Admit Date :
<%out.println(view_claim.getAdmit_date());%>
<br>
Discharge Date :
<%out.println(view_claim.getDischarge_date());%>
<br>
Hospital Name :
<%out.println(view_claim.getHospital_name());%>
<br>
Doctor Name :
<%out.println(view_claim.getDoctor_name());%>
<br>
Hospital Fees :
<%out.println(view_claim.getHospital_fees());%>
<br>
Pathology Fees :
<%out.println(view_claim.getPathology_fees());%>
<br>
Chemist Fees :
<%out.println(view_claim.getChemist_fees());%>
<br>
Miscellaneous Fees :
<%out.println(view_claim.getMiscellaneous_fees());%>
<br>
Total Bill Submitted :
<%out.println(view_claim.getBill_count());%>
<br>
Total Amount :
<%out.println(view_claim.getTotal_amount());%>
<br>
Claim No :
<%out.println(view_claim.getClaim_count());%>
<%String sst= view_claim.getClaim_count();%>
  <br>
 <a href="Claim_Process?empid=<%=view_claim.getE_id()%>&status=<%="Approve"%>&Claim_No=<%=view_claim.getClaim_count()%>">Approve</a>
 <a href="Claim_Process?empid=<%=view_claim.getE_id()%>&status=<%="Reject"%>&Claim_No=<%=view_claim.getClaim_count()%>">Reject</a>
  <a href="Claim_Process?empid=<%=view_claim.getE_id()%>&status=<%="Resend"%>&Claim_No=<%=view_claim.getClaim_count()%>">Resend</a>
</body>
</html>