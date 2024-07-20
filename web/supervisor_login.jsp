<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supervisor Login</title>
    <link rel="stylesheet" href="userlogin.css">
    <style>
        .error-message {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>

<body>
    <form name="form" action="SupervisorLoginServlet" method="post" onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">Supervisor Login</div>
            <div class="inputs">
                <label for="suid">Supervisor UID</label>
                <input class="input-field" type="text" id="suid" name="suid" placeholder="Enter Supervisor UID" required />
                <p class="error-message" id="sError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password" placeholder="Min 6 characters long" required minlength="6" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit">LOGIN</button>
            </div>
        </div>
    </form>

    <script>
        function validateForm() {
            var suid = document.getElementById('suid').value;
            var password = document.getElementById('password').value;
            var sError = document.getElementById('sError');
            var passwordError = document.getElementById('passwordError');

            // Clear any previous error messages
            sError.textContent = '';
            passwordError.textContent = '';

            if (suid === '') {
                sError.textContent = 'Please enter supervisor UID.';
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
