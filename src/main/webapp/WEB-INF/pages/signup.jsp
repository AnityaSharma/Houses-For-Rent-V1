<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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

        .signup-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            width: 300px;
            height: 350px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
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
        
        .pswd{
            margin-top: 35px;
        }
        .submitButton{
            margin-top: 15px;
            width: 170px;
        }
        
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Signup</h2>
        <form action="register" method="post" >
        <div class="form-group">
            <input type="text" id="first-name" placeholder="First Name" name="firstName">
        </div>

        <div class="form-group">
            <input type="text" id="last-name" placeholder="Last Name" name="lastName">
        </div>

        <div class="form-group">
            <input type="email" id="email" placeholder="Email" name="eMail">
        </div>

        <div class="form-group pswd">
            <input type="password" id="password" placeholder="Password" name="password">
        </div>
        <div>
            <button class="submitButton" type="submit">Submit</button>
        </div>
        </form>
        
    </div>

</body>
</html>
