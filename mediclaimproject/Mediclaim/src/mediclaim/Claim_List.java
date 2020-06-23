package mediclaim;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Claim_List
 */
@WebServlet("/Claim_List")
public class Claim_List extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Claim_List() {
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
		//Creating Connection With Database
		
		try{
			HttpSession session = request.getSession(true);
			
			 Claim_Bean Bean_Data = (Claim_Bean )session.getAttribute("claim_bean");

			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim","root","root");
			PreparedStatement ps =con.prepareStatement("select * from  claim_detail where Claim_Status=?");
			
			ps.setString(1, "Submitted");
			
			ResultSet rs=ps.executeQuery();

			ArrayList Claim_List = new ArrayList();
			while(rs.next())
			{	
				Claim_Bean  cb=new Claim_Bean();
				
		        cb.setE_id(rs.getString("Employee_Id"));
		        cb.setE_name(rs.getString("Employee_Name"));
		        cb.setE_relation(rs.getString("Employee_Relation"));
		        cb.setAdmit_date(rs.getString("Admit_Date"));
		        cb.setDischarge_date(rs.getString("Discharge_Date"));
		        cb.setHospital_name(rs.getString("Hospital_Name"));
		        cb.setDoctor_name(rs.getString("Doctor_Name"));
		        cb.setHospital_fees(rs.getString("Hospital_Fees"));
		        cb.setPathology_fees(rs.getString("Pathology_Fees"));
		        cb.setChemist_fees(rs.getString("Chemist_Fees"));
		        cb.setMiscellaneous_fees(rs.getString("Miscellaneous_Fees"));
		        cb.setBill_count(rs.getString("Bill_Count"));
		        cb.setTotal_amount(rs.getString("Total_Amount"));
		        cb.setClaim_count(rs.getString("Claim_Count"));
		        cb.setClaim_status(rs.getString("Claim_Status"));
		        Claim_List.add(cb);        
			}	
		    	session.setAttribute("claim_data",Claim_List);
					
			
				RequestDispatcher rd=request.getRequestDispatcher("Claim_Submitted.jsp");
				rd.forward(request,response);
					
				
		}catch(Exception e)
			{
			
				e.printStackTrace();
				
			}
	
	}

}
