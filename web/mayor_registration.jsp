<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mayorRegister</title>
    <link rel="stylesheet" href="user_register.css">
    <script>
        function validateForm() {
            var username = document.forms["form"]["username"].value;
            var email = document.forms["form"]["email"].value;
            var phone = document.forms["form"]["phone"].value;
            var password = document.forms["form"]["password"].value;
            var confpassword = document.forms["form"]["confpassword"].value;

            if (username == "" || email == "" || phone == "" || password == "" || confpassword == "") {
                alert("All fields must be filled out");
                return false;
            }

            // Email validation
            var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address");
                return false;
            }

            // Phone validation
            var phonePattern = /^[0-9]{10}$/;
            if (!phonePattern.test(phone)) {
                alert("Please enter a valid 10-digit phone number");
                return false;
            }

            // Password length validation
            if (password.length < 8) {
                alert("Password must be at least 8 characters long");
                return false;
            }

            // Password and Confirm Password match
            if (password !== confpassword) {
                alert("Passwords do not match");
                return false;
            }

            return true;
        }
    </script>
</head>

<body style="background:linear-gradient(to right, #FF8C00,  #DD6E0F);">

    <div class="container-1 d-flex justify-content-between">
        <div class="d-flex align-items-center justify-content-between">
            <img src="R_logo.png" alt="logo" class="logo">
            <div class="logo-text">
                <p>
                    <h3>Road Repair</h3><span class="small-text">Tracking System</span>
                </p>
            </div>
        </div>
    </div>

    <form name="form" action="mayor_RegistrationServlet" method="post" onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">Mayor Registration</div>
            <div class="inputs">
                <label>USERNAME</label>
                <input class="input-field" type="text" id="username" name="username" placeholder="user_123" required />
                
                <label>EMAIL</label>
                <input class="input-field" type="email" id="email" name="email" placeholder="example@test.com" required />
                
                <label>MOBILE</label>
                <input class="input-field" type="tel" id="phone" name="phone" placeholder="9998899988" required pattern="[0-9]{10}" />
                
                <label>PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password" placeholder="Min 8 characters long" required minlength="8" />
                
                <label>CONFIRM PASSWORD</label>
                <input class="input-field" type="password" id="confpassword" name="confpassword" placeholder="Min 8 characters long" required minlength="8" />
                
                <button type="submit" class="login-button">REGISTER</button>
            </div>
            <div class="card">
                <p class="footer-text">Already have an account, <a href="mayor_login.jsp" class="registration-link">Login</a></p>
            </div>
        </div>
    </form>
</body>

</html>
