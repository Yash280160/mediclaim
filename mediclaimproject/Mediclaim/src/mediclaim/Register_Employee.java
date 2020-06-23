
package mediclaim;
import java.sql.* ;
import java.io.IOException;
import java.io.PrintWriter;
import java.rmi.Naming;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class Register_Employee extends HttpServlet {
	
	private Object Employee_LName;
	private Object Employee_Adress;
	private Object Employee_Email;
	private Object Employee_FName;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();

//	int status=RegisterUser.register(Employee_FName, Employee_LName,Employee_Adress, Employee_Email );
	
	
	
	try{
		String Employee_FName=request.getParameter("Employee_FName");
		String Employee_LName=request.getParameter("Employee_LName");
		String  Employee_Adress=request.getParameter("Employee_Adress");
		
		String Employee_Email=request.getParameter("Employee_Email");

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediclaim", "root" ,"root");
	PreparedStatement ps = con.prepareStatement("insert into employee values (?)");
	ps.setString(2,"Employee_FName");
//	 status = ps.executeUpdate();
	}catch (Exception e)
{
		e.printStackTrace();
}
}
}

