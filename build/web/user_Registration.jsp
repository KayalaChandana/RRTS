<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserRegister</title>
    <link rel="stylesheet" href="user_register.css">
    <script>
        function validateForm() {
            var username = document.forms["form"]["username"].value;
            var email = document.forms["form"]["email"].value;
            var phone = document.forms["form"]["phone"].value;
            var password = document.forms["form"]["password"].value;
            var confpassword = document.forms["form"]["confpassword"].value;
            var photo = document.forms["form"]["photo"].files[0];

            if (username == "" || email == "" || phone == "" || password == "" || confpassword == "" || !photo) {
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

            // Photo validation
            var allowedExtensions = /(\.jpg|\.jpeg|\.png)$/i;
            if (!allowedExtensions.exec(photo.name)) {
                alert("Please upload file having extensions .jpeg/.jpg/.png only.");
                return false;
            }

            var maxSize = 2 * 1024 * 1024; // 2MB
            if (photo.size > maxSize) {
                alert("File size must be less than 2MB.");
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

    <form name="form" action="RegistrationServlet" method="post" enctype="multipart/form-data" onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">User Registration</div>
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

                <label>UPLOAD PHOTO</label>
                <input class="input-field" type="file" id="photo" name="photo" accept=".jpg, .jpeg, .png" required />
                
                <button type="submit" class="login-button">REGISTER</button>
            </div>
            <div class="card">
                <p class="footer-text">Already have an account, <a href="userlogin.jsp" class="registration-link">Login</a></p>
            </div>
        </div>
    </form>
</body>

</html>
