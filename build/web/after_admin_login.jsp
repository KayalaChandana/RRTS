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
            margin: 30px;
            display: flex;

  margin-top: 220px;
        }
        .container-2 {
            align-items: start;
            height: 20vh;
            margin: 50px;
          
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
        .container-1 {
    height: 180px;
    width: 100%;
    max-width: none;
    background-color: #ffffff;
    display: flex;
    align-items: top;
    align-items: start;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 10%;
}
.logo {
    width: 90px;
    display: flex;
}

.logo-container {
    display: flex;

}

.text-center {
    margin: 0;
    /* Remove the default margin for text-center */
}

.logo-text p {
    margin-top: 10px;
    /* Remove default margin for the paragraph */
    font-size: 35px;



    /* Adjust the font size as needed */
}

.text {
    align-content:end;
}

h3 {
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    font-weight: 900;
    font-style: inherit;
    font-family: Georgia, 'Times New Roman', Times, serif;
    color: #DD6E0F;
    position: absolute;
    top:40px;
    left:160px;
}

.small-text {

    font-size: 20px;
    margin-left: 30px;
    display: block;
    margin-top: -15px;
    font-family: Georgia, 'Times New Roman', Times, serif;
    color: black;
    /* Adjust the font size of the small text as needed */
    position: absolute;
    top:90px;
    left:115px;
}
.top-right {
            position: absolute;
            top: 10px;
            right: 10px;
        }
    </style>
</head>

<body>
    <div class="container-1 d-flex justify-content-between" style="padding:40px;">
        <div class="d-flex align-items-center justify-content-between">
            <img src="R_logo.jpg" alt="logo" class="logo">
            <div class="logo-text">
                <p>
                <h3>Road Repair</h3><span class="small-text">Tracking System</span></p>
            </div>
        </div>

    </div>

    <div class="container">
        <div class="card" onclick="openRepairForm('RoadRepairComplaint.jsp')">
            <img src="fom2.jpg" alt="Document Type 1">
            <div class="card-content">
                <h2>Road Repair List</h2>
                <p>Click to open the final Road Repair List(Priority Wise) </p>
                <button class="login-button" onclick="openRepairForm('RoadRepairComplaint.jsp')">Open Form</button>
            </div>

        </div>

        <div class="card" onclick="openUpdateForm('updateresource.jsp')">
            <img src="form5.jpg" alt="Document Type 2">
            <div class="card-content">
                <h2>Update Resources</h2>
                <p>Click to Update the Resource Details  </p>
                <button class="login-button" onclick="openUpdateForm('updateresource.jsp')">Open
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
        function openRepairForm() {
            window.location.href = "RoadRepairComplaint.jsp";
        }
        function openUpdateForm() {
            window.location.href = "updateresource.jsp";
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
