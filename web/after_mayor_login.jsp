<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mayor Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #fcebb2;
        }

        .container {
            margin-top: 50px;
        }
        
        /* Add your existing styles here */

         .top-right {
        position: absolute;
        top: 10px;
        right: 10px;
    }

    .top-right button {
        margin-left: 10px;
        background-color: #1976D2; /* Blue */
        border: none;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
    }

    .top-right button:hover {
        background-color: #1565C0; /* Darker Blue */
    }
    </style>
</head>

<body>
    
    
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h1>Welcome, Mayor!</h1>
                <p>This is your dashboard. Choose an option below:</p>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Generate Registrations</h5>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#adminModal">
                            Administrator
                        </button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#supervisorModal">
                            Supervisor
                        </button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#clerkModal">
                            Clerk
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Administrator Modal -->
    <div class="modal fade" id="adminModal" tabindex="-1" aria-labelledby="adminModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="adminModalLabel">Administrator Registration</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form name="adminForm" action="AdminServlet" method="post" onsubmit="return validateAdminForm()">
                        <label for="adminName">Administrator Name:</label>
                        <input type="text" id="adminName" name="adminName" class="form-control" required>

                        <label for="adminUid">Administrator UID:</label>
                        <input type="text" id="adminUid" name="adminUid" class="form-control" required>

                        <label for="adminAge">Administrator Age:</label>
                        <input type="text" id="adminAge" name="adminAge" class="form-control" required>

                        <label for="adminMail">Administrator Mail:</label>
                        <input type="email" id="adminMail" name="adminMail" class="form-control" required>

                        <label for="adminMobile">Administrator Mobile:</label>
                        <input type="text" id="adminMobile" name="adminMobile" class="form-control" required>

                        <label for="adminPassword">Administrator Password:</label>
                        <input type="password" id="adminPassword" name="adminPassword" class="form-control" required>

                        <label for="adminConfirmPassword">Confirm Password:</label>
                        <input type="password" id="adminConfirmPassword" name="adminConfirmPassword"
                            class="form-control" required>

                        <button type="submit" class="btn btn-primary mt-3">Register Administrator</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Supervisor Modal -->
    <div class="modal fade" id="supervisorModal" tabindex="-1" aria-labelledby="supervisorModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="supervisorModalLabel">Supervisor Registration</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form name="supervisorForm" action="SupervisorServlet" method="post" onsubmit="return validateSupervisorForm()">
                        <label for="supervisorName">Supervisor Name:</label>
                        <input type="text" id="supervisorName" name="supervisorName" class="form-control" required>

                        <label for="supervisorUid">Supervisor UID:</label>
                        <input type="text" id="supervisorUid" name="supervisorUid" class="form-control" required>

                        <label for="supervisorAge">Supervisor Age:</label>
                        <input type="text" id="supervisorAge" name="supervisorAge" class="form-control" required>

                        <label for="supervisorMail">Supervisor Mail:</label>
                        <input type="email" id="supervisorMail" name="supervisorMail" class="form-control" required>

                        <label for="supervisorMobile">Supervisor Mobile:</label>
                        <input type="text" id="supervisorMobile" name="supervisorMobile" class="form-control" required>

                        <label for="supervisorPassword">Supervisor Password:</label>
                        <input type="password" id="supervisorPassword" name="supervisorPassword" class="form-control"
                            required>

                        <label for="supervisorConfirmPassword">Confirm Password:</label>
                        <input type="password" id="supervisorConfirmPassword" name="supervisorConfirmPassword"
                            class="form-control" required>

                        <button type="submit" class="btn btn-primary mt-3">Register Supervisor</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Clerk Modal -->
    <div class="modal fade" id="clerkModal" tabindex="-1" aria-labelledby="clerkModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="clerkModalLabel">Clerk Registration</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form name="clerkForm" action="ClerkServlet" method="post" onsubmit="return validateClerkForm()">
                        <label for="clerkName">Clerk Name:</label>
                        <input type="text" id="clerkName" name="clerkName" class="form-control" required>

                        <label for="clerkUid">Clerk UID:</label>
                        <input type="text" id="clerkUid" name="clerkUid" class="form-control" required>

                        <label for="clerkAge">Clerk Age:</label>
                        <input type="text" id="clerkAge" name="clerkAge" class="form-control" required>

                        <label for="clerkMail">Clerk Mail:</label>
                        <input type="email" id="clerkMail" name="clerkMail" class="form-control" required>

                        <label for="clerkPassword">Clerk Password:</label>
                        <input type="password" id="clerkPassword" name="clerkPassword" class="form-control" required>

                        <label for="clerkConfirmPassword">Confirm Password:</label>
                        <input type="password" id="clerkConfirmPassword" name="clerkConfirmPassword" class="form-control"
                            required>

                        <button type="submit" class="btn btn-primary mt-3">Register Clerk</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <h1 style="margin-left: 80px">Complaint Statistics</h1>
    <div class="col-md-4" style="margin-left: 80px">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Total Complaints Till Now</h5>
                        <p class="card-text">Total number of complaints received: ${sessionScope.totalComplaints}</p>
                    </div>
                </div>
            </div>
<!-- Navigation buttons in top right corner -->
    <div class="top-right">
        <button onclick="backToHome()">Back to Home</button>
        <button onclick="logout()">Logout</button>
    </div>
<!-- JavaScript functions for navigation -->
    <script>
        function backToHome() {
            // Redirect back to the home page
            window.location.href = "index.jsp";
        }

        function logout() {
            // Redirect to the login page
            window.location.href = "loginpage.jsp";
        }
       <!-- Display registration message using JavaScript alert -->
        var registrationMessage = "<%= request.getAttribute("registrationMessage") %>";
        if (registrationMessage && registrationMessage.length > 0) {
            alert(registrationMessage);
        }
    
    </script>
</body>

</html>
