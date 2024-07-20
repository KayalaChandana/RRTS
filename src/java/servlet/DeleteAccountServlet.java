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

@WebServlet("/DeleteAccountServlet")
public class DeleteAccountServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

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

            // Prepare SQL query to delete user account
            String deleteQuery = "DELETE FROM user_registration WHERE username=?";
            PreparedStatement deleteStatement = connection.prepareStatement(deleteQuery);
            deleteStatement.setString(1, username);

            // Execute the delete query
            int rowsDeleted = deleteStatement.executeUpdate();

            // Close resources
            deleteStatement.close();
            connection.close();

            // Invalidate the session after deleting the account
            session.invalidate();

            // Set a success message in the session
            HttpSession successSession = request.getSession();
            successSession.setAttribute("deleteSuccess", true);

            // Redirect to the index.jsp page
            response.sendRedirect("index.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while deleting the account.");
        }
    }
}
