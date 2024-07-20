<%@ page import="java.sql.*, java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Complaint Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f7ff; /* Light blue background color */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff; /* White container background color */
            padding: 20px;
            box-shadow: 0 0 10px rgba(1, 1, 1, 1); /* Box shadow for a subtle effect */
            border-radius: 5px; /* Rounded corners */
        }

        h2 {
            text-align: center;
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #4285f4; /* Google Blue color for table headers */
            color: #fff; /* White text color for table headers */
        }
        button {
            color: orange;
            margin-top: 20px;
            margin-left: 76%;
            background: black;
            height: 40px;
            width: 15%;
            align-self: right;
            border-radius: 20px;
            cursor: pointer;
            font-weight: 900;
            box-shadow: 6px 6px 6px #cbced1, -2px -2px -1px white;
            transition: background-color 0.3s ease, transform 0.1s ease;}
    </style>
</head>
<body>
    

    <div class="container">
        <h2>Complaint Details</h2>

        <table>
            <tr>
                <th>Name</th>
                <th>Phone</th>
                <th>Location
                    (Rural/Urban)</th>
                
                <th>Address</th>
                <th>Complaint</th>
                <th>Message</th>
            </tr>
            <%
                // Database connection parameters
                String url = "jdbc:mysql://localhost:3306/mysql";
                String user = "root";
                String password = "Royal@2003";

                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;

                try {
                    // Establish database connection
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    connection = DriverManager.getConnection(url, user, password);

                    // Fetch complaint details from the database
                    statement = connection.createStatement();
                    String sql = "SELECT * FROM user_complaints";
                    resultSet = statement.executeQuery(sql);

                    // Display complaint details in a table
                    while (resultSet.next()) {
                        String name = resultSet.getString("name");
                        String phone = resultSet.getString("phone");
                        String location = resultSet.getString("location");
                        String issue = resultSet.getString("issue");
                        String complaint = resultSet.getString("complaint");
                        String message = resultSet.getString("message");
            %>
                        <tr>
                            <td><%= name %></td>
                            <td><%= phone %></td>
                            <td><%= location %></td>
                            <td><%= issue %></td>
                            <td><%= complaint %></td>
                            <td><%= message %></td>
                        </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    // Close resources
                    try {
                        if (resultSet != null) resultSet.close();
                        if (statement != null) statement.close();
                        if (connection != null) connection.close();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                }
            %>
        </table>
    </div>
        <div class="top-right">
        <button  onclick="backToHome()"> <-Back</button>
        
    </div>
        <script>
        function backToHome() {
            // Redirect back to the home page
            window.location.href = "after_supervisor_login.jsp";
        }
        </script>
</body>
</html>
