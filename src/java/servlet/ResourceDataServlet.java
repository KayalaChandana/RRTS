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

@WebServlet("/ResourceDataServlet")
public class ResourceDataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        int maleCount = Integer.parseInt(request.getParameter("maleCount"));
        int femaleCount = Integer.parseInt(request.getParameter("femaleCount"));
        String machineName = request.getParameter("machineName");
        int machineCount = Integer.parseInt(request.getParameter("machineCount"));

        // Database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/mysql"; // Replace with your actual database URL
        String dbUsername = "root";
        String dbPassword = "Royal@2003";

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish database connection
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUsername, dbPassword);

            // SQL query to insert data into the table
            String sql = "INSERT INTO admin_resource_update (male_count, female_count, machine_name, machine_count) VALUES (?, ?, ?, ?)";

            // Create a PreparedStatement
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                // Set parameter values
                preparedStatement.setInt(1, maleCount);
                preparedStatement.setInt(2, femaleCount);
                preparedStatement.setString(3, machineName);
                preparedStatement.setInt(4, machineCount);

                // Execute the query
                int rowsAffected = preparedStatement.executeUpdate();

                // Process the result
                if (rowsAffected > 0) {
                    // Data inserted successfully
                    PrintWriter out = response.getWriter();
                    out.println("<script>");
                    out.println("alert('Resource details updated successfully');");
                    out.println("window.location.href='after_admin_login.jsp';");
                    out.println("</script>");
                } else {
                    // Something went wrong
                    response.sendRedirect("error.jsp"); // Redirect to an error page
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle exceptions as needed
            response.sendRedirect("error.jsp"); // Redirect to an error page
        }
    }
}
