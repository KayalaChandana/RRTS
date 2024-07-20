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

@WebServlet("/LoginServlet_Mayor")
public class LoginServlet_Mayor extends HttpServlet {
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
                String mayorId = request.getParameter("mayorid");
                String pw = request.getParameter("password");

                // Create SQL query to check if mayor exists in the database
                String selectSql = "SELECT * FROM mayor_details WHERE uid = ? AND password = ?";
                preparedStatement = connection.prepareStatement(selectSql);

                // Set parameters for the select query
                preparedStatement.setString(1, mayorId);
                preparedStatement.setString(2, pw);

                // Execute the select query
                resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    // Mayor login successful
                    HttpSession session = request.getSession();
                    session.setAttribute("mayorId", mayorId);

                    // Count the total number of complaints
                    try {
                        // Create a new connection for counting complaints
                        Connection countConnection = DriverManager.getConnection(url, user, password);

                        // Create a statement for counting complaints
                        PreparedStatement countStatement = countConnection.prepareStatement(
                                "SELECT COUNT(*) AS total FROM user_complaints");

                        // Execute a query to count the total number of complaints
                        ResultSet countResultSet = countStatement.executeQuery();

                        // Retrieve the result
                        if (countResultSet.next()) {
                            int totalComplaints = countResultSet.getInt("total");

                            // Set the total number of complaints as a session attribute
                            session.setAttribute("totalComplaints", totalComplaints);
                        }

                        // Close the resources for counting complaints
                        countResultSet.close();
                        countStatement.close();
                        countConnection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }

                    response.sendRedirect("after_mayor_login.jsp");
                } else {
                    // Mayor login failed
                    out.println("<script>");
                    out.println("alert('Invalid mayor ID or password. Please try again.');");
                    out.println("window.location.href='mayorlogin.jsp';");
                    out.println("</script>");
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
