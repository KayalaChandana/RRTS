<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clerk_Login</title>
    <link rel="stylesheet" href="userlogin.css">
    <style>
        .error-message {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>

<body>
    <form name="form" method="post" action="ClerkLoginServlet" onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">Clerk Login</div>
            <div class="inputs">
                <label for="cname">Clerk UID</label>
                <input class="input-field" type="text" id="cname" name="cname" placeholder="Enter Clerk UID" required />
                <p class="error-message" id="cError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password" placeholder="Min 6 characters long" required minlength="6" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit">LOGIN</button>
            </div>
        </div>
    </form>

    <script>
        function validateForm() {
            var username = document.getElementById('cname').value;
            var password = document.getElementById('password').value;
            var usernameError = document.getElementById('cError');
            var passwordError = document.getElementById('passwordError');

            // Clear any previous error messages
            usernameError.textContent = '';
            passwordError.textContent = '';

            if (username === '') {
                usernameError.textContent = 'Please enter clerk UID.';
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
