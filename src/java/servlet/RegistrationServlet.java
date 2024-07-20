import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/RegistrationServlet")
@MultipartConfig(maxFileSize = 2 * 1024 * 1024) // 2MB max file size
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String MYSQL_URL = "jdbc:mysql://localhost:3306/mysql";
    private static final String MYSQL_USER = "root";
    private static final String MYSQL_PASSWORD = "Royal@2003";
    
    private static final String POSTGRESQL_URL = "jdbc:postgresql://localhost:5432/postgres";
    private static final String POSTGRESQL_USER = "postgres";
    private static final String POSTGRESQL_PASSWORD = "Royal@2003";
    
    private static final String ORACLE_URL = "jdbc:oracle:thin:@localhost:1521:XE";
    private static final String ORACLE_USER = "system";
    private static final String ORACLE_PASSWORD = "Royal@2003";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            // Load the JDBC drivers
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Class.forName("org.postgresql.Driver");
                Class.forName("oracle.jdbc.driver.OracleDriver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                out.println("Error loading database drivers.");
                return;
            }

            // Get data from the form
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String passwordValue = request.getParameter("password");
            String confirmPassword = request.getParameter("confpassword");

            // Check if passwords match
            if (!passwordValue.equals(confirmPassword)) {
                out.println("Passwords do not match. Please try again.");
                return;
            }

            // Handle file upload
            Part photoPart = request.getPart("photo");
            InputStream photoInputStream = null;
            if (photoPart != null) {
                // Obtain input stream of the uploaded file
                photoInputStream = photoPart.getInputStream();
            }

            // Create SQL query to insert data into the user_registration table
            String insertSql = "INSERT INTO user_registration (username, email, phone, password, confpassword, photo) VALUES (?, ?, ?, ?, ?, ?)";

            Connection mysqlConnection = null;
            Connection pgConnection = null;
            Connection oracleConnection = null;
            PreparedStatement mysqlStmt = null;
            PreparedStatement pgStmt = null;
            PreparedStatement oracleStmt = null;

            try {
                // Establish MySQL connection
                mysqlConnection = DriverManager.getConnection(MYSQL_URL, MYSQL_USER, MYSQL_PASSWORD);
                mysqlStmt = mysqlConnection.prepareStatement(insertSql);
                mysqlStmt.setString(1, username);
                mysqlStmt.setString(2, email);
                mysqlStmt.setString(3, phone);
                mysqlStmt.setString(4, passwordValue);
                mysqlStmt.setString(5, confirmPassword);
                if (photoInputStream != null) {
                    mysqlStmt.setBlob(6, photoInputStream);
                }

                // Establish PostgreSQL connection
                pgConnection = DriverManager.getConnection(POSTGRESQL_URL, POSTGRESQL_USER, POSTGRESQL_PASSWORD);
                pgStmt = pgConnection.prepareStatement(insertSql);
                pgStmt.setString(1, username);
                pgStmt.setString(2, email);
                pgStmt.setString(3, phone);
                pgStmt.setString(4, passwordValue);
                pgStmt.setString(5, confirmPassword);
                if (photoInputStream != null) {
                    pgStmt.setBinaryStream(6, photoInputStream);
                }

                // Establish Oracle connection
                oracleConnection = DriverManager.getConnection(ORACLE_URL, ORACLE_USER, ORACLE_PASSWORD);
                oracleStmt = oracleConnection.prepareStatement(insertSql);
                oracleStmt.setString(1, username);
                oracleStmt.setString(2, email);
                oracleStmt.setString(3, phone);
                oracleStmt.setString(4, passwordValue);
                oracleStmt.setString(5, confirmPassword);
                if (photoInputStream != null) {
                    oracleStmt.setBlob(6, photoInputStream);
                }

                // Execute the insert queries
                int mysqlRowsAffected = mysqlStmt.executeUpdate();
                int pgRowsAffected = pgStmt.executeUpdate();
                int oracleRowsAffected = oracleStmt.executeUpdate();

                if (mysqlRowsAffected > 0 && pgRowsAffected > 0 && oracleRowsAffected > 0) {
                    // Registration successful
                    out.println("<script>");
                    out.println("alert('Registration successful!');");
                    out.println("window.location.href='loginpage.jsp';");
                    out.println("</script>");
                } else {
                    out.println("Registration failed. Please try again.");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                out.println("Error connecting to the database.");
            } finally {
                // Close the connections and statements
                try {
                    if (mysqlStmt != null) mysqlStmt.close();
                    if (pgStmt != null) pgStmt.close();
                    if (oracleStmt != null) oracleStmt.close();
                    if (mysqlConnection != null) mysqlConnection.close();
                    if (pgConnection != null) pgConnection.close();
                    if (oracleConnection != null) oracleConnection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}