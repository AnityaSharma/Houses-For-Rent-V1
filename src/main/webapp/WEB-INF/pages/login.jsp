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
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            }

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 300px;
            height: 330px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
            margin-top: 35px;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .submitButton{
            margin-top: 48px;
            width: 170px;
        }
        .loginLink{
            margin-top: 35px;
        }
        .loginLink a{
            color: #4caf50;
            font-size: large;
            font-weight: bold;
            text-decoration: none;
        }
    </style>
    
    
</head>
<body>
    <div class="login-container">
        <h2>Welcome Back</h2>
        <form action="login" method="post">
        <div class="form-group">
            <input type="email" id="email" name="eMail" placeholder="Enter your email">
        </div>

        <div class="form-group">
            <input type="password" id="password" name="password" placeholder="Enter your password">
        </div>

        <div>
            <button class="submitButton" >Submit</button>
        </div>
        </form>
    </div>

</body>
</html>