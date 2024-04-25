<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Tenant</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            scroll-behavior: smooth;
            height: 100vh;
            background-image: url("images/bgImg.png");
            }

        .cont{
            height: 600px;
            width: 100%;
        }

        .switch{
            display: inline-block;
            width: 180px; 
            height: 40px; 
            background-color: rgb(254, 254, 254);
            color:#030303 ; 
            font-weight: 400;
            text-align: center;
            position:fixed;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            right: 10px; 
            top: 15px; 
            cursor: pointer;
            border: none;
            margin-right: 30px;
            transition: opacity 0.3s ease;
        } 
        .switch:hover{
            opacity: 0.9;
            /* background-color: #e099eb; */
            color: black;
        }
        .input-group {
            margin-bottom: 20px;
        }
        
        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        
        .input-group input {
            width: 100%;
            padding: 5px 0; 
            border: none;
            border-bottom: 1px solid #ccc; 
            background-color: transparent; 
            outline: none; 
        }

        form {
        max-width: 400px;
        margin: 0 auto;
        }
        .form-group {
            position: relative;
            margin-bottom: 20px;
            margin-top: auto;
            
        }
        .formstart{
            margin-top: 190px;
        }
        label {
            position: absolute;
            top: 11px;
            left: 12px;
        }
        input[type="text"] {
            border: none;
            border-bottom: 1px solid black;
            width: 100%;
            padding: 15px;
            padding-left: 80px; /* Adjust as needed */
            box-sizing: border-box;
        }
        input[type="submit"] {
            margin-left: 130px;
            width: 160px;
            background-color:rgb(181, 69, 238);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color:darkorchid;
        }

    </style>
    <script src="https://kit.fontawesome.com/e39aeb8094.js" crossorigin="anonymous"></script>
    <script>
        function switchToLandlord(){
            window.location.href = 'landlord';
        }
    </script>
</head>
<body>
    <div class="cont">
        <div class="container">
            <button class="switch" onclick= "switchToLandlord()" ><i class="fa-solid fa-arrows-rotate"></i>&nbsp;&nbspSwitch to Landlord</button>
        </div>
        <div>
            <form action="find" method="post">
                <div class="form-group formstart">
                    <label for="state">State:</label>
                    <input type="text" id="state" name="state" placeholder="Enter your state" name="state" required>
                </div>
                
                <div class="form-group">
                    <label for="city">City:</label>
                    <input type="text" id="city" name="city" placeholder="Enter your city" name="city" required>
                </div>

                <input type="submit" value="Find">
            </form>
        </div>
    </div>
    
</body>
</html>