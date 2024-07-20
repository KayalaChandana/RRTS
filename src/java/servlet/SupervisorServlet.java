import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SupervisorServlet")
public class SupervisorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            // Database connection parameters
            String url = "jdbc:mysql://localhost:3306/mysql";
            String user = "root";
            String password = "Royal@2003";

            // JDBC variables for opening, closing, and managing connection
            Connection connection = null;
            PreparedStatement preparedStatement = null;

            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish connection
                connection = DriverManager.getConnection(url, user, password);

                // Get data from the form
                String name = request.getParameter("supervisorName");
                String uid = request.getParameter("supervisorUid");
                int age = Integer.parseInt(request.getParameter("supervisorAge"));
                String mail = request.getParameter("supervisorMail");
                String mobile = request.getParameter("supervisorMobile");
                String pw = request.getParameter("supervisorPassword");

                // Create SQL query to insert data into the supervisor_details table
                String insertSql = "INSERT INTO supervisor_details (name, uid, age, mail, mobile, password) VALUES (?, ?, ?, ?, ?, ?)";
                preparedStatement = connection.prepareStatement(insertSql);

                // Set parameters for the insert query
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, uid);
                preparedStatement.setInt(3, age);
                preparedStatement.setString(4, mail);
                preparedStatement.setString(5, mobile);
                preparedStatement.setString(6, pw);

                // Execute the insert query
                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    request.setAttribute("registrationMessage", "Supervisor Registration successful!");
                } else {
                    request.setAttribute("registrationMessage", "Supervisor Registration failed. Please try again.");
                }

                request.getRequestDispatcher("after_mayor_login.jsp").forward(request, response);

            } catch (ClassNotFoundException | SQLException e) {
                if (e.getMessage().contains("Duplicate entry")) {
                    request.setAttribute("registrationMessage", "Duplicate entry found. Supervisor with the same UID, email, or mobile already exists.");
                    request.getRequestDispatcher("after_mayor_login.jsp").forward(request, response);
                } else {
                    e.printStackTrace();
                    request.setAttribute("registrationMessage", "An error occurred. Please try again.");
                    request.getRequestDispatcher("after_mayor_login.jsp").forward(request, response);
                }
            } finally {
                // Close the connection and statement
                try {
                    if (preparedStatement != null) {
                        preparedStatement.close();
                    }
                    if (connection != null) {
                        connection.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
