import jakarta.servlet.RequestDispatcher;
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


@WebServlet("/ViewAccountDetailsServlet")
public class ViewAccountDetailsServlet extends HttpServlet {
    // ... (imports and serialVersionUID)

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the username from the session
        String username = (String) request.getSession().getAttribute("username");

        // Fetch user details from the database based on the username
        // (You need to implement this part based on your database schema)
        User user = getUserDetailsByUsername(username);

        // Set user details as a request attribute
        request.setAttribute("user", user);

        // Forward the request to the JSP page for displaying user details
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view_account_details.jsp");
        dispatcher.forward(request, response);
    }

    // Helper method to fetch user details from the database (replace this with your implementation)
    private User getUserDetailsByUsername(String username) {
        // Implement this method to fetch user details from the database
        // You'll need to use JDBC to execute a query and get the user details
        // Example: SELECT * FROM user_registration WHERE username = ?
        // Map the result to a User object and return it
        // Return null if user not found or an error occurs
        return null;
    }
}
