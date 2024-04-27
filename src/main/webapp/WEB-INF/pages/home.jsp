<!--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Property Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            font-size: larger;
        }

        .container {
            max-width: 1500px;
            margin: 30px auto;
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-wrap: wrap;
        }

        .details-container {
            flex: 1;
            padding-right: 20px;
        }

        .images-container {
            flex: 1;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 20px;
            justify-content: flex-end;
            text-align: right;
        }

        .images-container h2 {
            grid-column: 1 / -1;
            margin-bottom: 20px;
        }

        h1 {
            text-align: center;
            color: #333;
            text-transform: uppercase;
        }

        .property-details {
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 15px;
        }

        .property-details:last-child {
            border-bottom: none;
        }

        .property-details label {
            font-weight: bold;
            color: #666;
        }

        .property-details p {
            margin: 5px 0;
            color: #333;
        }

        .image img {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .image label {
            display: block;
            margin-top: 5px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="details-container">
            <h2>PROPERTY DETAILS</h2>
            <div class="property-details">
                <label>Name of Property:</label>
                <p>${property.propertyName }</p>
            </div>
            
            <div class="property-details">
                <label>Number of Rooms:</label>
                <p>${property.rooms }</p>
            </div>

            <div class="property-details">
                <label>Address:</label>
                <p>${property.address }</p>
            </div>

            <div class="property-details">
                <label>City:</label>
                <p>${property.city }</p>
            </div>

            <div class="property-details">
                <label>State:</label>
                <p>${property.state }</p>
            </div>

            <div class="property-details">
                <label>Country:</label>
                <p>${property.country }</p>
            </div>
            
            <div class="property-details">
                <label>Price:</label>
                <p> &#8377;${property.price }</p>
            </div>
            
            <div class="property-details">
                <label>Email:</label>
                <p> &#8377;${property.contactDetails.eMail }</p>
            </div>
            
            <div class="property-details">
                <label>Phone:</label>
                <p> &#8377;${property.contactDetails.phoneNumber }</p>
            </div>
        </div>
        
        <div class="images-container">
            <h2>IMAGES</h2>
            <c:forEach var="index" begin="0" end="${property.image.size() - 1}">
                <div class="image">
                    <img src="image/${property.image[index].name}">
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>
-->