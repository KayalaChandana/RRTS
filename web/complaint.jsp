<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaint Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: grey;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 130vh;
            margin: 0;
        }

        form {
            background-color: orange;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            width: 800px;
            transition: box-shadow 0.3s ease-in-out;
        }

        form:hover {
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
        }

        label {
            font-size: 16px;
            margin-bottom: 8px;
            display: block;
        }

        input, textarea {
            width: 100%;
            padding: 12px;
            margin-bottom: 16px;
            border: 2px solid #4caf50;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 14px;
            transition: border-color 0.3s ease-in-out;
        }

        input:hover, textarea:hover {
            border-color: #45a049;
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: #4caf50;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 12px 15px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form id="myForm" method="post" action="ComplaintSubmissionServlet" enctype="multipart/form-data">
        <h2 style="text-align: center; font-size: 20px;">Complaint Form</h2>

        <!-- Personal Information -->
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" placeholder="Your Name" required>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" placeholder="Your Phone" required>
        </div>

        <!-- Additional Information -->
        <div>
            <label for="location">Location (urban/rural):</label>
            <input type="text" id="location" name="location" placeholder="Location" required>

            <label for="issue">Address:</label>
            <textarea id="issue" name="issue" rows="4" placeholder="Your Address" required></textarea>

            <label for="complaint">Complaint:</label>
            <textarea id="complaint" name="complaint" rows="4" placeholder="Your Complaint" required></textarea>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" placeholder="Your Message" required></textarea>

            <label for="photo">Upload Photo:</label>
            <input type="file" id="photo" name="photo" accept="image/*">
        </div>

        <!-- Submit Button -->
        <div style="text-align: center;">
            <button type="submit" id="submitButton">SUBMIT</button>
        </div>
    </form>
</body>

</html>
