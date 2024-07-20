import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UpdateDetailsServlet")
public class UpdateDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        // Retrieve the new details from the form
        String newEmail = request.getParameter("newEmail");
        String newPhone = request.getParameter("newPhone");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        // Retrieve the username from the session
        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        // Replace these placeholders with your actual database details
        String jdbcUrl = "jdbc:mysql://localhost:3306/mysql";
        String dbUser = "root";
        String dbPassword = "Royal@2003";

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Check if the new password matches the confirm password
            if (!newPassword.equals(confirmPassword)) {
                response.getWriter().println("Password and Confirm Password do not match.");
                return;
            }

            // Prepare SQL query to update user details
            String updateQuery = "UPDATE user_registration SET email=?, phone=?, password=? WHERE username=?";
            PreparedStatement updateStatement = connection.prepareStatement(updateQuery);
            updateStatement.setString(1, newEmail);
            updateStatement.setString(2, newPhone);
            updateStatement.setString(3, newPassword);
            updateStatement.setString(4, username);

            // Execute the update query
            int rowsUpdated = updateStatement.executeUpdate();

            // Close resources
            updateStatement.close();
            connection.close();

            // Update session with new details
            session.setAttribute("email", newEmail);
            session.setAttribute("phone", newPhone);

            // Redirect to the user details page after updating
            response.sendRedirect("userDetails.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while updating details.");
        }
    }
}
