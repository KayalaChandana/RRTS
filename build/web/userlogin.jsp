<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserLogin</title>
    <link rel="stylesheet" href="userlogin.css">
    <style>
        .error-message {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>

<body>
    <form name="form" action="LoginServlet_user" method="post" onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">User Login</div>
            <div class="inputs">
                <label for="username">USERNAME</label>
                <input class="input-field" type="text" id="username" name="username" placeholder="example@test.com" required />
                <p class="error-message" id="usernameError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password" placeholder="Min 6 characters long" required minlength="6" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit">LOGIN</button>
            </div>
            <div class="card">
                <p class="footer-text">If you are new, <a href="user_Registration.jsp" class="registration-link">Register</a></p>
            </div>
        </div>
    </form>

    <script>
        function validateForm() {
            var username = document.getElementById('username').value;
            var password = document.getElementById('password').value;
            var usernameError = document.getElementById('usernameError');
            var passwordError = document.getElementById('passwordError');

            // Clear any previous error messages
            usernameError.textContent = '';
            passwordError.textContent = '';

            if (username === '') {
                usernameError.textContent = 'Please enter your username.';
                return false;
            }
            if (password === '') {
                passwordError.textContent = 'Please enter your password.';
                return false;
            }
            if (password.length < 6) {
                passwordError.textContent = 'Password must be at least 6 characters long.';
                return false;
            }

            return true; // Allow the form to be submitted
        }
    </script>
</body>

</html>
