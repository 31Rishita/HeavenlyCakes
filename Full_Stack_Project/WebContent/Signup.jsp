<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Signup</title>
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
      height: 150vh;
    }

    .card {
      background-color: #fff;
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
      border-radius: 5px;
    }

    .right-section {
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .signup-form {
      margin-top: 20px;
    }

    .signup-form h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .form-group {
      margin-bottom: 15px;
    }

    .form-label {
      display: block;
      margin-bottom: 5px;
      color: #333;
    }

    .form-label span {
      color: #ff5777;
      margin-left: 5px;
    }

    .form-input {
      width: calc(100% - 24px);
      padding: 10px;
      margin-bottom: 5px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    .error-message {
      color: red;
      font-size: 12px;
    }

    .form-button {
      background-color: #ff5777;
      color: #fff;
      padding: 12px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
      margin-bottom: 15px;
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
      display: grid;
      align-items: center;
      justify-content: center;
      margin-top: 45px;
      padding-bottom: 10px;
    }

    .error-message {
      color: red;
      font-size: 12px;
      margin-top: 5px;
    }

    .login-link {
      color: red;
      cursor: pointer;
      text-decoration: none;
    }
  </style>
</head>
<body>
<nav class="navbar">
  <!-- Your existing navigation code here -->
</nav>

<div class="container">
  <form class="signup-form" id="signup-form" action="SignupServlet" method="post">
    <div class="card">
      <div class="left-section">
        <video width="320" height="240" autoplay loop muted>
          <source src="Video/login.mp4" type="video/mp4">
          Your browser does not support the video tag.
        </video>
      </div>
      <div class="right-section">
        <div class="login-form">
          <h2>SIGNUP</h2>
          <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
          </c:if>
          <div class="form-group">
            <label class="form-label" for="email">E-mail <span>*</span></label>
            <input class="form-input" type="email" id="email" name="email" placeholder="Enter E-mail" required>
            <div class="error-message" id="email-error"></div>
          </div>
          <div class="form-group">
            <label class="form-label" for="first-name">First name <span>*</span></label>
            <input class="form-input" type="text" id="first-name" name="first-name" placeholder="Enter your First name" pattern="[A-Za-z]+" title="Only letters are allowed" required>
            <div class="error-message" id="first-name-error"></div>
          </div>
          <div class="form-group">
            <label class="form-label" for="last-name">Last name <span>*</span></label>
            <input class="form-input" type="text" id="last-name" name="last-name" placeholder="Enter your Last name" pattern="[A-Za-z]+" title="Only letters are allowed" required>
            <div class="error-message" id="last-name-error"></div>
          </div>
          <div class="form-group">
            <label class="form-label" for="password">Password <span>*</span></label>
            <input class="form-input" type="password" id="password" name="password" placeholder="Enter Password" required oninput="validatePassword()">
            <div class="error-message" id="password-error"></div>
          </div>
          <div class="form-group">
            <label class="form-label" for="confpassword">Confirm Password <span>*</span></label>
            <input class="form-input" type="password" id="confpassword" name="confpassword" placeholder="Confirm Password" required>
            <div class="error-message" id="confpassword-error"></div>
          </div>
          <button class="form-button" type="submit">Signup</button>
        </div>
        <div class="or-line"><span>OR</span></div>
        <div class="google">
          <p>Already have an account? <a href="Login.jsp" class="login-link">Login here</a></p>
        </div>
      </div>
    </div>
  </form>
</div>
</body>
<script>
  function validatePassword() {
    var password = document.getElementById("password").value;
    var pattern = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*()_+}{"':;?/>.<,])(?=.*[a-zA-Z]).{8,}$/;
    var passwordError = document.getElementById("password-error");
    
    if (!pattern.test(password)) {
      passwordError.textContent = "Password must contain at least 8 characters including numbers, lowercase and uppercase letters, and symbols.";
    } else {
      passwordError.textContent = "";
    }
  }
</script>
</html>
