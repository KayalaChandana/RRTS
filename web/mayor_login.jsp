<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mayor Login</title>
    <link rel="stylesheet" href="userlogin.css">
    <style>
        .error-message {
            color: red;
            font-size: 0.9em;
        }
    </style>
</head>

<body>
    <form name="form" action="LoginServlet_Mayor" method="post" onsubmit="return validateForm()">
        <div class="container">
            <div class="brand-logo"></div>
            <div class="brand-title">Mayor Login</div>
            <div class="inputs">
                <label for="mayorid">MAYOR ID</label>
                <input class="input-field" type="text" id="mayorid" name="mayorid" placeholder="Enter Mayor ID" required />
                <p class="error-message" id="mError"></p>

                <label for="password">PASSWORD</label>
                <input class="input-field" type="password" id="password" name="password" placeholder="Min 6 characters long" required minlength="6" />
                <p class="error-message" id="passwordError"></p>

                <button class="login-button" type="submit">LOGIN</button>
            </div>
             <div class="card">
                <p class="footer-text">If you are new, <a href="mayor_registration.jsp" class="registration-link">Register</a></p>
            </div>
        </div>
    </form>

    <script>
        function validateForm() {
            var mayorid = document.getElementById('mayorid').value;
            var password = document.getElementById('password').value;
            var mError = document.getElementById('mError');
            var passwordError = document.getElementById('passwordError');

            // Clear any previous error messages
            mError.textContent = '';
            passwordError.textContent = '';

            if (mayorid === '') {
                mError.textContent = 'Please enter mayor ID.';
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
