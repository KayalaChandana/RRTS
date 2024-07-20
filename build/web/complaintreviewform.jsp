<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Complaint Review Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            margin-bottom: 5px;
        }

        input,
        select {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
     <div class="top-right">
        <button style="margin-left: 90%; " onclick="backToHome()"> <-Back</button>
        
    </div>
    <div class="container">
        <h2>Complaint Review Form</h2>
        <form action="ProcessComplaintServlet" method="post">
            <label for="complaint_id">Complaint ID:</label>
            <input type="text" id="complaint_id" name="complaint_id" required>

            <label for="raw_material">Raw Material:</label>
            <input type="textarea" id="raw_material" name="raw_material" required>

            <label for="machine_required">Machine Required:</label>
            <input type="textarea" id="machine_required" name="machine_required" required>

            <label for="labour_count">Labour Count:</label>
            <input type="number" id="labour_count" name="labour_count" required>

            <label for="priority">Priority (Integer):</label>
            <input type="number" id="priority" name="priority" required>

            <button type="submit">Submit</button>
        </form>
    </div>
   
    
     <script>
        function backToHome() {
            // Redirect back to the home page
            window.location.href = "after_supervisor_login.jsp";
        }
        </script>
</body>
</html>
