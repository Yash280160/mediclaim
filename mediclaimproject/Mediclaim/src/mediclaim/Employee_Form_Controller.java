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
 * Servlet implementation class Employee_Form_Controller
 */
@WebServlet("/Employee_Form_Controller")
public class Employee_Form_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Employee_Form_Controller() {
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
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim", "root" ,"root");
			PreparedStatement ps = con.prepareStatement("Update employee_detail set  Employee_FName = ? , Employee_LName = ? ,  Employee_DOB = ? ,  Employee_DOJ = ? ,  Employee_Gender = ? ,  Employee_Address = ? ,  Employee_Email = ? ,  Employee_Contact = ? ,  Employee_Department = ? ,  Employee_Designation = ? ,  Employee_Coverage = ? where Employee_Id = ?");
			
			ps.setString(1,request.getParameter("Employee_FName"));
			ps.setString(2,request.getParameter("Employee_LName"));
			ps.setString(3,request.getParameter("Employee_DOB"));
			ps.setString(4,request.getParameter("Employee_DOJ"));
			ps.setString(5,request.getParameter("Employee_Gender"));
			ps.setString(6,request.getParameter("Employee_Address"));
			ps.setString(7,request.getParameter("Employee_Email"));
			ps.setString(8,request.getParameter("Employee_Contact"));
			ps.setString(9,request.getParameter("Employee_Department"));
			ps.setString(10,request.getParameter("Employee_Designation"));
			ps.setString(11,request.getParameter("Employee_Coverage"));
			ps.setString(12,request.getParameter("Employee_Id"));
			 ps.executeUpdate();
			 
			
			request.setAttribute("update", "Data Updated");
				RequestDispatcher rd=request.getRequestDispatcher("View_Employee.jsp");
			
				rd.forward(request,response);
					

			} catch (Exception e) {
				e.printStackTrace();


				
				 
			}
			
				
	}

}
