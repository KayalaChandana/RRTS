import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SupervisorLoginServlet")
public class SupervisorLoginServlet extends HttpServlet {
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
            ResultSet resultSet = null;

            try {
                // Load the JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish connection
                connection = DriverManager.getConnection(url, user, password);

                // Get data from the form
                String suid = request.getParameter("suid");
                String passwordInput = request.getParameter("password");

                // Create SQL query to retrieve data from the supervisor_details table
                String selectSql = "SELECT name FROM supervisor_details WHERE uid = ? AND password = ?";
                preparedStatement = connection.prepareStatement(selectSql);
                preparedStatement.setString(1, suid);
                preparedStatement.setString(2, passwordInput);

                // Execute the query
                resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    // Supervisor login successful
                    String supervisorName = resultSet.getString("name");

                    // Store supervisor name in session
                    HttpSession session = request.getSession();
                    session.setAttribute("supervisorName", supervisorName);

                    // Redirect to the after supervisor login page
                    response.sendRedirect("after_supervisor_login.jsp");
                } else {
                    // Supervisor login failed
                    out.println("Invalid supervisor UID or password. Please try again.");
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            } finally {
                // Close the connection, statement, and result set
                try {
                    if (resultSet != null) {
                        resultSet.close();
                    }
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
