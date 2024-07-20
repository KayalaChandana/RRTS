<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Resource Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: gray;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: lightcoral;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 400px; /* Increased width */
        }

        .form-heading {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }

        .form-section {
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .form-input {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <div class="form-heading">Update Resource Form</div>

        <form action="ResourceDataServlet" method="post">
            <div class="form-section">
                <span class="form-label">Manpower</span>
                <div>
                    <span class="form-label">Male count:</span>
                    <input type="number" class="form-input" name="maleCount">
                </div>
                <div>
                    <span class="form-label">Female count:</span>
                    <input type="number" class="form-input" name="femaleCount">
                </div>
            </div>

            <div class="form-section">
                <span class="form-label">Machines</span>
                <div>
                    <span class="form-label">Machine name:</span>
                    <input type="text" class="form-input" name="machineName">
                </div>
                <div>
                    <span class="form-label">Machine count:</span>
                    <input type="number" class="form-input" name="machineCount">
                </div>
            </div>

            <button class="form-button" type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
