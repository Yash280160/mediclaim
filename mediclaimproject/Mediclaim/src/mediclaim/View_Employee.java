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
 * Servlet implementation class View_Employee
 */
@WebServlet("/View_Employee")
public class View_Employee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View_Employee() {
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
					
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim","root","root");
			PreparedStatement ps =con.prepareStatement("select * from employee_detail where Employee_Id=?");
			ps.setString(1, request.getParameter("E_ID"));
			ResultSet rs=ps.executeQuery();

			Employee_Bean  e_View=new Employee_Bean();
			
			if(rs.next())
			{	
				
				 e_View.setE_id(rs.getString("Employee_Id"));
		         e_View.setE_fname(rs.getString("Employee_FName"));
		         e_View.setE_lname(rs.getString("Employee_LName"));
		         e_View.setE_dob(rs.getString("Employee_DOB"));
		         e_View.setE_doj(rs.getString("Employee_DOJ"));
		         e_View.setE_gender(rs.getString("Employee_gender"));
		         e_View.setE_address(rs.getString("Employee_address"));
		         e_View.setE_email(rs.getString("Employee_Email"));
		         e_View.setE_contact(rs.getString("Employee_Contact"));
		         e_View.setE_department(rs.getString("Employee_Department"));
		         e_View.setE_designation(rs.getString("Employee_Designation"));
		         e_View.setE_coverage(rs.getString("Employee_Coverage"));
		         e_View.setE_password(rs.getString("Employee_Password"));
		
			}
				session.setAttribute("employee_view",e_View );
					
			
				RequestDispatcher rd=request.getRequestDispatcher("View_Employee.jsp");
				rd.forward(request,response);
					
				
		    	
		}catch(Exception e)
			{
			
				e.printStackTrace();
				
			}

		
		
		
	}

}
