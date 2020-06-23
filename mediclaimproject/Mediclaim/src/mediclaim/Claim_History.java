package mediclaim;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Claim_Histroy
 */
@WebServlet("/Claim_History")
public class Claim_History extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Claim_History() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		
		

		try{
			HttpSession session = request.getSession(true);
			 Claim_Bean Bean_Data = (Claim_Bean)session.getAttribute("claim_bean");
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim","root","root");
			PreparedStatement ps =con.prepareStatement("select * from  claim_detail where Employee_Id = ?");
			
			ps.setString(1, request.getParameter("Employee_Id"));
			
			ResultSet rs=ps.executeQuery();

			ArrayList   Claim_Bean = new ArrayList();
			while(rs.next())
			{	
				Claim_Bean ch=new Claim_Bean();
				
		        ch.setE_id(rs.getString("Employee_Id"));
		        ch.setE_name(rs.getString("Employee_Name"));
		        ch.setE_relation(rs.getString("Employee_Relation"));
		        ch.setAdmit_date(rs.getString("Admit_Date"));
		        ch.setDischarge_date(rs.getString("Discharge_Date"));
		        ch.setHospital_name(rs.getString("Hospital_Name"));
		        ch.setDoctor_name(rs.getString("Doctor_Name"));
		        ch.setHospital_fees(rs.getString("Hospital_Fees"));
		        ch.setPathology_fees(rs.getString("Pathology_Fees"));
		        ch.setChemist_fees(rs.getString("Chemist_Fees"));
		        ch.setMiscellaneous_fees(rs.getString("Miscellaneous_Fees"));
		        ch.setBill_count(rs.getString("Bill_Count"));
		        ch.setTotal_amount(rs.getString("Total_Amount"));
		        ch.setClaim_count(rs.getString("Claim_Count"));
		        ch.setClaim_status(rs.getString("Claim_Status"));
		         Claim_Bean.add(ch);        
			}	
		    	session.setAttribute("Claim_History",  Claim_Bean);
					
			
				RequestDispatcher rd=request.getRequestDispatcher("Claim_History.jsp");
				rd.forward(request,response);
					
				
		}catch(Exception e)
			{
			
				e.printStackTrace();
				
			}
	}

}
