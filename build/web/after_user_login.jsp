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
            flex-wrap: wrap; /* Added to wrap cards to the next line */
        }

        .card {
            display: flex;
            flex-direction: row;
            width: 45%; /* Adjusted width to fit two cards in a line with some spacing */
            height: 200px;
            margin: 5px; /* Added margin for spacing between cards */
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
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card img {
            max-width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .card-content {
            flex-grow: 10;
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
        }

        button {
            color: orange;
            margin-top: 20px;
            background: black;
            height: 40px;
            width: 100%;
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
        .welcome-message {
            margin-top: 50px;
            font-size: 50px;
            color: white; /* Change the color to your preference */
            text-align: center;
        }
    </style>
</head>

<body>
    <!-- Welcome message -->
    <div class="welcome-message">
        <% 
            // Retrieve the username from the session and display the welcome message
            String username = (String) session.getAttribute("username");
            out.println("Hey, welcome <span style='color: #ff6600;'>" + username + "</span>! How are you?");
        %>
    </div>
    <div class="container">
        <!-- Feedback Card -->
        <div class="card" onclick="openForm('complaint.jsp')">
            <img src="status.jpg" alt="Feedback Image">
            <div class="card-content">
                <h2>File a Complaint</h2>
                <p>Click to open the form to enter Feedback</p>
                <button class="login-button" onclick="openForm('complaint.jsp')">Open Form</button>
            </div>
        </div>

        <!-- Fill the Form Card -->
        <div class="card" onclick="checkStatus()">
            <img src="checkstatus.jpg" alt="Document Type 2">
            <div class="card-content">
                <h2>Check Complaint Status</h2>
                <p>Click to view the status of your complaints</p>
                <button class="login-button" onclick="checkStatus()">Check Status</button>
            </div>
        </div>

        <!-- My Account Details Card -->
        <div class="card">
            <img src="fom2.jpg" alt="Account Image">
            <div class="card-content">
                <h2>My Account Details</h2>
                <p>Click to view your account details</p>
                <form action="UserDetailsServlet" method="post">
                    <button type="submit" class="login-button">View Details</button>
                </form>
            </div>
        </div>


        <!-- My Complaint Status Card -->
        <div class="card" >
            <!-- Replace 'complaint_status.jsp' with the actual page for complaint status -->
            <img src="fb2.jpg" alt="Status Image">
            <div class="card-content">
                <h2>Feedback</h2>
                <p>Click here to give the feedback of rapidness</p>
                <button class="login-button" onclick="openForm('feedback.jsp')">View Status</button>
            </div>
        </div>
    </div>

    <!-- Navigation buttons in top right corner -->
    <div class="top-right">
        <button onclick="backToHome()">Back to Home</button>
        <button onclick="logout()">Logout</button>
    </div>

    <script>
        function openForm(page) {
            window.location.href = page;
        }

        function backToHome() {
            // Redirect back to the home page
            window.location.href = "index.jsp";
        }

        function logout() {
            // Redirect to the login page
            window.location.href = "loginpage.jsp";
        }
         function checkStatus() {
            alert("Your complaint has been received successfully. We'll notify you all updates soon with your phone number as complaint id. Thank you!");
            
            
        }
    </script>
</body>

</html>
