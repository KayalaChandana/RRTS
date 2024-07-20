<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Details</title>
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

        .update-details-form {
            background-color: #fefefe;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .update-details-form h2 {
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
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
    </style>
</head>

<body>
    <div class="update-details-form">
        <h2>Update Details</h2>
        <form action="UpdateDetailsServlet" method="post">
            <label for="newEmail">New Email:</label>
            <input type="email" id="newEmail" name="newEmail" placeholder="Enter your new email" required>

            <label for="newPhone">New Phone:</label>
            <input type="tel" id="newPhone" name="newPhone" placeholder="Enter your new phone number" required>

            <label for="newPassword">New Password:</label>
            <input type="password" id="newPassword" name="newPassword" placeholder="Enter your new password" required>

            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" name="confirmPassword" placeholder="Confirm your new password" required>

            <button type="submit" class="update-button">Update</button>
        </form>
    </div>
</body>

</html>
s