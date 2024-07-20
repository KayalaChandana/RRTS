<%-- 
    Document   : after_clerk_login
    Created on : 16-Dec-2023, 6:48:09 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Page Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: grey;
            margin: 10px;
            padding: 10px;
        }

        .container {
            align-items: center;
            align-self: center;
            display: flex;
            justify-content: space-evenly;
            margin: 50px;
            height: 100vh;
        }

        .card {
            display: flex;
            flex-direction: row;
            width: 500px;
            height: 200px;
            padding: 5px;
            background-color: orange;
            border: 1px solid gray;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card-content {
            padding: 20px;
        }

        .card:hover {

            transform: scale(1.05);
            /* Add a slight lift on hover */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card img {
            max-width: 500%;
            height: 100%;
            object-fit: cover;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .card-content {
            flex-grow: 10;
            /* Allow the content to grow and fill the available space */
        }

        .card h2 {
            font-size: 1.5em;
            margin-bottom: 30px;
            margin-top: 0px;
            align-content: top;
        }

        .card p {
            margin: 0;
            font-size: 16px;
            font-weight: bold;
        }

        .card button {
            align-self: flex-end;
            /* Push the button to the bottom */
        }

        button {
            color: orange;
            margin-top: 20px;
            background: black;
            height: 40px;
            width: 150px;
            border-radius: 20px;
            cursor: pointer;
            font-weight: 900;
            box-shadow: 6px 6px 6px #cbced1, -2px -2px -1px white;
            transition: background-color 0.3s ease, transform 0.1s ease;
        }

        .login-button:hover {
            background-color: white;
            color: orange;
            transform: scale(1.05);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);

        }
        .top-right {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="card" onclick="openForm('ViewComplaints.jsp')">
            <img src="fom2.jpg" alt="Document Type 1">
            <div class="card-content">
                <h2>Complaints Form</h2>
                <p>Click to open the Complaints entered by the user</p>
                <button class="login-button" onclick="openForm('ViewComplaints.jsp')">Open Form</button>
            </div>

        </div>

        <div class="card" onclick="openComplaintForm('complaint.jsp')">
            <img src="status.jpg" alt="Document Type 2">
            <div class="card-content">
                <h2>Fill the Form</h2>
                <p>Click to open the form to enter the Complaints</p>
                <button class="login-button" onclick="openComplaintForm('complaint.jsp')">Open
                    Form</button>
            </div>

        </div>
    </div>
<!-- Navigation buttons in top right corner -->
    <div class="top-right">
        <button onclick="backToHome()">Back to Home</button>
        <button onclick="logout()">Logout</button>
    </div>
    <script>
        function openForm() {
            window.location.href = "ViewComplaints.jsp";
        }
        function openComplaintForm() {
            window.location.href = "complaint.jsp";
        }
        function backToHome() {
            // Redirect back to the home page
            window.location.href = "index.jsp";
        }

        function logout() {
            // Redirect to the login page
            window.location.href = "loginpage.jsp";
        }
    </script>
</body>

</html>