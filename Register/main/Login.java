package in.login.Page;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/loginForm")
public class Login  extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String myEmail = req.getParameter("email");
		String pass = req.getParameter("password");
		
		PrintWriter out = resp.getWriter();
		HttpSession session = req.getSession();
		resp.setContentType("text/html");
		
		
		
		try {
			
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 
			 Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_db","root","12212729Rk@");
			 
			 PreparedStatement ps = con.prepareStatement("Select * from student where email = ? and password= ?");
			 ps.setString(1, myEmail);
			 ps.setString(2, pass);
					 
			 
			 ResultSet re = ps.executeQuery();
			 
			 if(re.next())
			 {
				 	String n1= re.getString("name");
				 	session.setAttribute("name",n1);
				 
				 RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
				 rd.include(req, resp); 
				 	
			 }
			 else {
				 
				
				session.setAttribute("link","<h3 style='color:red'> Email and Password not match</h3>");
				 
				 RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
				 rd.include(req, resp); 
			 }
			
			
			
			
		} catch (Exception e) {
			 
				session.setAttribute("link","<h3 style='color:red'>"+e.getMessage()+"</h3>");
				 
				 RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
				 rd.include(req, resp);
		}
	}

}
