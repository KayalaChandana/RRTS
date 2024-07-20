import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/viewComplaints")
public class ViewComplaintsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Complaint> complaintList = new ArrayList<>();

        // Database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/mysql";
        String dbUser = "root";
        String dbPassword = "Royal@2003";

        // Database query
        String sql = "SELECT name, phone, location, issue, complaint, message FROM user_complaints";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the database connection
            try (Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);
                    PreparedStatement preparedStatement = connection.prepareStatement(sql);
                    ResultSet resultSet = preparedStatement.executeQuery()) {

                while (resultSet.next()) {
                    Complaint complaint = new Complaint();
                    complaint.setName(resultSet.getString("name"));
                    complaint.setPhone(resultSet.getString("phone"));
                    complaint.setLocation(resultSet.getString("location"));
                    complaint.setIssue(resultSet.getString("issue"));
                    complaint.setComplaint(resultSet.getString("complaint"));
                    complaint.setMessage(resultSet.getString("message"));

                    complaintList.add(complaint);
                }

                // Set the complaint list as a request attribute with a consistent name
                request.setAttribute("complaints", complaintList);

                // Forward the request to the ViewComplaints.jsp page
                RequestDispatcher dispatcher = request.getRequestDispatcher("/ViewComplaints.jsp");
                dispatcher.forward(request, response);

            } catch (SQLException e) {
                e.printStackTrace();
                response.getWriter().println("Error processing the request. Please try again. Error details: " + e.getMessage());
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().println("Error loading the JDBC driver. Please check your dependencies.");
        }
    }
}
