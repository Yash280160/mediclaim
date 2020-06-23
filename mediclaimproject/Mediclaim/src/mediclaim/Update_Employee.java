package mediclaim;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Update_Employee
 */
@WebServlet("/Update_Employee")
public class Update_Employee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Employee() {
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
			
			ps.setString(1,request.getParameter("empid"));
			
			ResultSet rs=ps.executeQuery();
			Employee_Bean  el1=new Employee_Bean();
			if(rs.next())
			{
				 el1.setE_id(rs.getString("Employee_Id"));
				
		         el1.setE_fname(rs.getString("Employee_FName"));
		         el1.setE_lname(rs.getString("Employee_LName"));
		         el1.setE_dob(rs.getString("Employee_DOB"));
		         el1.setE_doj(rs.getString("Employee_DOJ"));
		         el1.setE_gender(rs.getString("Employee_gender"));
		         el1.setE_address(rs.getString("Employee_address"));
		         el1.setE_email(rs.getString("Employee_Email"));
		         el1.setE_contact(rs.getString("Employee_Contact"));
		         el1.setE_department(rs.getString("Employee_Department"));
		         el1.setE_designation(rs.getString("Employee_Designation"));
		         el1.setE_coverage(rs.getString("Employee_Coverage"));
		         el1.setE_password(rs.getString("Employee_Password"));
		             
			}	
		    	session.setAttribute("update_employee", el1);
					
			
				RequestDispatcher rd=request.getRequestDispatcher("Update_Employee.jsp");
				rd.forward(request,response);
	
				
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
