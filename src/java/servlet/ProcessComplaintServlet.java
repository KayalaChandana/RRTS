import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ProcessComplaintServlet")
public class ProcessComplaintServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter out = response.getWriter();

        String complaintId = request.getParameter("complaint_id");
        String rawMaterial = request.getParameter("raw_material");
        String machineRequired = request.getParameter("machine_required");
        int labourCount = Integer.parseInt(request.getParameter("labour_count"));
        int priority = Integer.parseInt(request.getParameter("priority"));

        // JDBC database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/mysql";
        String dbUser = "root";
        String dbPassword = "Royal@2003";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // Insert data into the superviser_complaint_report table
            String insertQuery = "INSERT INTO superviser_complaint_report (complaint_id, raw_material, machine_required, labour_count, priority) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
                preparedStatement.setString(1, complaintId);
                preparedStatement.setString(2, rawMaterial);
                preparedStatement.setString(3, machineRequired);
                preparedStatement.setInt(4, labourCount);
                preparedStatement.setInt(5, priority);

                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    out.println("<script>alert('Complaint requirements Entered successfully!'); window.location.href='after_supervisor_login.jsp';</script>");
                } else {
                    out.println("<h2>Failed to submit the complaint.</h2>");
                }
            }

            connection.close();
        } catch (Exception e) {
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}
