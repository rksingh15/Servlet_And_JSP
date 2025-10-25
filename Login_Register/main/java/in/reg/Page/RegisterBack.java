package in.reg.Page;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/regForm")
public class RegisterBack extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name1");
        String email = req.getParameter("email1");
        String pass = req.getParameter("password");
        String mygender = req.getParameter("gender1");
        String mycity = req.getParameter("city");

        HttpSession session = req.getSession();
        resp.setContentType("text/html");

        // JDBC URL, username, password
        String url = "jdbc:mysql://localhost:3306/student_db?useSSL=false&serverTimezone=UTC";
        String dbUser = "root";
        String dbPass = "12212729Rk@";

        String sql = "INSERT INTO student(name, email, password, gender, city) VALUES(?,?,?,?,?)";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection con = DriverManager.getConnection(url, dbUser, dbPass);
                 PreparedStatement ps = con.prepareStatement(sql)) {

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, pass); // Ideally hash password
                ps.setString(4, mygender);
                ps.setString(5, mycity);

                int n = ps.executeUpdate();

                if (n > 0) {
                    session.setAttribute("message",
                            "<h3 style='color:green;text-align:center;'>User Registered Successfully!</h3>");
                } else {
                    session.setAttribute("message",
                            "<h3 style='color:red;text-align:center;'>Registration Failed. Try Again.</h3>");
                }

            }

        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("message",
                    "<h3 style='color:red;text-align:center;'>Error: " + e.getMessage() + "</h3>");
        }

        // Redirect to JSP so message appears once
        resp.sendRedirect("registerFront.jsp");
    }
}
