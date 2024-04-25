<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error Page</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        header {
            background-color: #f9f9f9;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            font-size: 24px;
            font-weight: bold;
            margin: 0;
        }

        header p {
            font-size: 16px;
            font-weight: normal;
            margin: 0;
        }

        main {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        main img {
            width: 50%;
            height: auto;
            margin-bottom: 20px;
        }

        main p {
            font-size: 16px;
            font-weight: normal;
            text-align: center;
            margin: 0;
        }

        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            width: 100%;
        }

        footer a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Oops! Something went wrong.</h1>
        <p>We're sorry, but we couldn't find the page you were looking for. Please try again after some time.</p>
    </header>
    <main>
        <p>The error may have occurred due to a technical issue or a broken link. Please check the URL.</p>
    </main>
    <footer>
        <a href="#">Home</a>
        <a href="#">About Us</a>
        <a href="#">Contact Us</a>
        <a href="#">Other Pages</a>
    </footer>
</body>
</html>