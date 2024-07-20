<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: grey;
            margin: 10px;
            padding: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .user-details-form {
            background-color: #fefefe;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .user-details-form h2 {
            text-align: center;
        }

        .user-details-form p {
            margin-bottom: 10px;
        }

        .action-buttons {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }

        button {
            color: white;
            background-color: black;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .update-button:hover {
            background-color: #333;
        }

        .delete-button:hover {
            background-color: #ff3333;
        }
        button {
            color: orange;
            margin-top: 20px;
            background: black;
            height: 40px;
            width: 70%;
            border-radius: 20px;
            cursor: pointer;
            font-weight: 900;
            box-shadow: 6px 6px 6px #cbced1, -2px -2px -1px white;
            transition: background-color 0.3s ease, transform 0.1s ease;
        }
    </style>
</head>

<body>
    <div class="top-right">
        <button onclick="backToHome()">Back to Home</button>
        <button onclick="logout()">Logout</button>
    </div>
    <div class="user-details-form">
        <h2>User Details</h2>
        <p><strong>Full Name:</strong> ${fullName}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Phone:</strong> ${phone}</p>

        
        <!-- Action Buttons -->
        <div class="action-buttons">
            <button class="update-button" style="width:50%"onclick="updateDetails()">Update Details</button>
            <form action="DeleteAccountServlet" method="post" onsubmit="return deleteAccount()">
                <button type="submit" style="width: 110%" class="delete-button">Delete Account</button>
            </form>
        </div>
    </div>

    <script>
        function updateDetails() {
            // Redirect to the update details page
            window.location.href = "updateDetails.jsp";
        }

        function deleteAccount() {
            // Implement the logic for deleting the account, for example, show a confirmation dialog
            var confirmDelete = confirm("Are you sure you want to delete your account?");
            if (confirmDelete) {
                // Perform the actual delete operation or redirect to a delete servlet/page
                // For now, just redirecting to the login page as an example
                window.location.href = "loginpage.jsp";
            }
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
    <!-- Display success alert if set in the session -->
    
</body>

</html>
