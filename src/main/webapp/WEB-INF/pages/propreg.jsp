<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Property and Contact Details Form</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            scroll-behavior: smooth;
            height: 100vh;
            background-color: rgb(246, 219, 184);
            align-items: center;
        }
        .registerForm{
            background-color: white;
            border-radius: 6%;
            height: 550px;
            width: 440px;
            justify-content: center;
            display: flex;
            align-items: center;
            margin-left: 420px;
        }
        form{
            justify-content: center;
            align-items: center;
        }
        .country{
            margin-left: 20px;
            width: 190px;
        }
        .city{
            margin-left: 50px;
            width: 190px;
        }
        .money{
            width: 193px;
            margin-left: 40px;
        }
        .addrs{
            margin-left: 20px;
            width: 190px;
        }
        .state{
            margin-left: 40px;
            width: 190px;
        }
        .roms{
            width: 170px;
        }
        .mail{
            margin-left: 68px;
        }
        .phnNo{
            margin-left: 3px;
        }
        .moneyLabel{
            margin-left: 0px;
        }
        .roomLabel{
            margin-left: 0px;
        }
        .photosLabel{
        margin-right: 40px; 
        }
        .submitButton{
            background-color: antiquewhite;
            border-radius: 3px;
            border-width: 1px;
            margin-left: 90px;
            margin-top: 6px;
            width: 130px;
            height: 35px;
        }
        .submitButton:hover{
            background-color: rgb(246, 219, 184);
        }
        form h2{
            margin-left: 30px;
        }
    </style>
</head>
<body>
    <div class="registerForm">
    <form action="submitProperty" method="post" enctype="multipart/form-data">
        <h2>Property Information</h2>
        <label for="country" >Country:</label>
        <input type="text" id="country" name="country" class="country"><br><br>
        
        <label for="state" >State:</label>
        <input type="text" id="state" name="state" class="state"><br><br>
        
        <label for="city">City:</label>
        <input type="text" id="city" name="city" class="city"><br><br>
        
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" class="addrs"><br><br>
        
        <label for="rooms" class="roomLabel">No. of Rooms:</label>
        <input type="number" id="rooms" name="rooms" class="roms"><br><br>
        
        <label for="price" class="moneyLabel">Price:</label>
        <input type="number" id="price" name="price" class="money"><br><br>
        
        <!-- <label for="imageUrl">Photo:</label>
        <input type="file" id="imageUrl" name="imageUrl"><br><br> -->
        <label for="imageUrls" class="photosLabel">Photos:</label>
		<input type="file" id="imageUrls" name="imageUrls" multiple><br><br>
        
        
        <h2>Contact Details</h2>
        <label for="email">Email:</label>
        <input type="email" id="email" name="contactDetails.eMail" class="mail"><br><br>
        
        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="contactDetails.phoneNumber" class="phnNo"><br><br>
        
        <input type="submit" value="Submit" class="submitButton">
    </form>
    </div>
</body>
</html>