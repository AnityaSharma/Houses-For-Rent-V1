
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Properties</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: rgb(254, 247, 238);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header, footer {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
        }

        header h1, footer p {
            margin: 0;
        }

        main {
            flex: 1; /* Grow to fill remaining vertical space */
            padding: 20px;
        }

        .property {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 15px;
            height: 220px;
            display: flex;
        }

        .property h3 {
            margin-top: 0;
        }

        .property p {
            margin: 5px 0;
        }

        .propPhoto {
            height: 210px;
            width: 340px;
            margin-left: 300px;
            margin-right: 50px;
            border-radius: 10px;
            border: 2px;
            margin-top: 4px;
        }

        .details {
            width: 600px;
            margin-top: 20px;
            margin-left: 30px;
        }

        img {
            height: 210px;
            width: 340px;
        }

        footer {
            margin-top: auto; /* Push footer to the bottom */
        }

        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .delButton{
        	font-family: Arial, sans-serif;
        	margin-left: 25px;
        	background-color: black;
        	color: white;
        	padding: 3px;
        	width: 80px;
        	margin-top: 10px;
        	transition: opacity 0.3s ease;
        }
        .editButton{
        	font-family: Arial, sans-serif;
        	background-color: black;
        	width: 80px;
        	color: white;
        	padding: 3px;
        	margin-top: 10px;
        	transition: opacity 0.3s ease;
        }
    </style>
</head>
<body>
    <header>
        <h1>Property Listings</h1>
    </header>
    <main>
        <section>
            <c:forEach var="property" items="${myList}">
                <div class="property">
                    <div class="details">
                        <p><strong>Property Name:</strong> ${property.propertyName }</p>
                        <p><strong>City:</strong> ${property.city }</p>
                        <p><strong>State:</strong> ${property.state }</p>
                        <p><strong>Country:</strong> ${property.country }</p>
                        <p><strong>No. of Rooms:</strong> ${property.rooms }</p>
                        <p><strong>Price:</strong> ${property.price }</p>
                        <form action="edit/${property.id }" method="GET">
			                <button type="submit" class="editButton">Edit</button>
			                
			                <button type="submit" class="delButton">Delete</button>
			            </form>
                    </div>
                    <div class="propPhoto">
			            <!-- Check if property.image list has images -->
			            <c:if test="${not empty property.image}">
			                <!-- Display the first image -->
			                <img src="image/${property.image[0].name}">
			            </c:if>
			        </div>
                </div>
            </c:forEach>
            
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Rental Service</p>
    </footer>
</body>
</html>
