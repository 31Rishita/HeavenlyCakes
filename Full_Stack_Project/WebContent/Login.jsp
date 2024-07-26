<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
    body {
        font-family: sans-serif;
        background: #E1F5FE;
        background-size: cover;
        margin: 0;
        padding: 20px;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        background-color: rgba(255, 255, 255, 0.8); /* Transparent background */
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        display: flex;
        width: 800px;
        max-width: 100%;
        height: auto;
    }

    .left-section {
        flex: 1;
        text-align: center;
        padding-right: 20px;
    }

    .left-section video {
        width: 100%;
        height: auto;
        border: none;
    }

    .right-section {
        flex: 1;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .login-form {
        margin-top: 20px;
    }

    .login-form h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    .login-form input[type="email"],
    .login-form input[type="password"] {
        width: calc(100% - 24px);
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .login-form button[type="submit"] {
        background-color: #ff5777;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
        margin-bottom: 15px;
    }

    .terms {
        text-align: center;
        font-style: italic;
        font-size: 12px;
        color: #888;
        margin-bottom: 10px;
    }

    .terms a {
        color: #888;
        text-decoration: underline;
    }

    .or-line {
        display: flex;
        align-items: center;
        text-align: center;
        color: #888;
        margin-bottom: 15px;
    }

    .or-line::before,
    .or-line::after {
        content: "";
        flex: 1;
        border-top: 1px solid #888;
    }

    .or-line span {
        padding: 0 10px;
        font-weight: bold;
    }

    .google {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 45px;
        padding-bottom: 10px;
    }

    .loggoogle {
        background-color: #ffff;
        color: #090909;
        padding: 10px 20px;
        border-radius: 4px;
        text-decoration: none;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-left: 10px;
        margin-bottom: 20px;
        transition: background-color 0.3s ease;
    }

    .loggoogle:hover {
        background-color: #ff5777;
        color: #fff;
    }

    .loggoogle p {
        margin: 0;
    }

    .loggoogle a:hover {
        margin: 0;
        color: #ff5777;
    }

    .error-message {
        color: red;
        font-weight: bold;
    }
    </style>
</head>
<body>
    <div class="container">
        <form class="login-form" id="login-form" action="LoginServlet" method="post">
            <div class="card">
                <div class="left-section">
                    <video width="470" height="600" autoplay loop muted>
                        <source src="Video/login.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="right-section">
                    <div class="login-form">
                        <h2>LOGIN</h2>
                        <c:if test="${not empty errorMessage}">
                            <div class="error-message">${errorMessage}</div>
                        </c:if>
                        <div class="form-group">
                            <label class="form-label" for="email">E-mail</label>
                            <input class="form-input" type="email" id="email" name="email" placeholder="Enter E-mail" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="password">Password</label>
                            <input class="form-input" type="password" id="password" name="password" placeholder="Enter Password" required>
                        </div>
                        <button class="form-button" type="submit">Login</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
