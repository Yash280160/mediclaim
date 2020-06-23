package mediclaim;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Claim_Process
 */
@WebServlet("/Claim_Process")
public class Claim_Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Claim_Process() {
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
		
		HttpSession session = request.getSession(true);
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim", "root" ,"root");
			PreparedStatement ps = con.prepareStatement("Update  claim_detail set  Claim_Status = ? where Employee_Id=? and Claim_Count =?" );
			
			ps.setString(1,request.getParameter("status"));
			ps.setString(2,request.getParameter("empid"));
			ps.setString(3,request.getParameter( "Claim_No"));
			 ps.executeUpdate();
			 RequestDispatcher rd=request.getRequestDispatcher("Claim_Submitted.jsp");
			
				rd.forward(request,response);
					

			} catch (Exception e) {
				e.printStackTrace();


				
				 
			}
	}

}
