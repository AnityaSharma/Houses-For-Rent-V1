<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Form</title>
    <style>
        body {
		    font-family: Arial, sans-serif;
		    background-color: #f0f8ff; /* Updated background color */
		    margin: 0;
		    padding: 0;
		}
		
		.container {
		    max-width: 400px;
		    margin: 10px auto; /* Reduced top margin */
		    padding: 20px;
		    height: 560px;
		    background: #fff;
		    border-radius: 5px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		}
		
		.form-group {
		    display: flex;
		    align-items: center;
		    margin-bottom: 10px;
		}
		
		.form-group label {
		    width: 150px;
		    text-align: right;
		    margin-right: 10px;
		}
		
		.form-group input {
		    flex: 1;
		    padding: 8px;
		    border: none;
		    border-bottom: 1px solid #ccc; /* Added border-bottom style */
		    border-radius: 0; /* Removed border-radius */
		    box-sizing: border-box;
		}
		
		input[type="submit"] {
		    background-color: #1e90ff; /* Updated submit button color */
		    color: white;
		    margin-top: 10px;
		    margin-bottom: 5px;
		    margin-left: 120px;
		    padding: 10px 15px;
		    border: none;
		    border-radius: 4px;
		    cursor: pointer;
		    width: 150px;
		}
		
		input[type="file"] {
		    border: none;
		}
		
		.headings {
		    text-align: center;
		    color: #4169e1; /* Updated heading color */
		    margin-top: 10px; /* Reduced top margin */
		    margin-bottom: 10px;
		}
		.headingContact{
			text-align: center;
		    color: #4169e1; /* Updated heading color */
		    margin-top: 20px; /* Reduced top margin */
		    margin-bottom: 10px;
		}
    </style>
</head>
<body>
    <div class="container">
        <h2 class="headings">Property Details</h2>

        <c:set var="property" value="${requestScope.property}" />

        <form action="editprop" method="post">

            <input type="hidden" name="id" value="<c:out value="${property.id}" escapeXml="false" />">

            <div class="form-group">
                <label for="property_name">Property Name:</label>
                <input type="text" id="property_name" name="propertyName" required
                       value="<c:out value="${property.propertyName}" escapeXml="false" />">
            </div>
            
            <div class="form-group">
	            <label for="address">Address:</label>
	        	<input type="text" id="address" name="address" required
                       value="<c:out value="${property.address}" escapeXml="false" />">
        	</div>
        	
        	<div class="form-group">
                <label for="city">City:</label>
                <input type="text" id="city" name="city" required
                       value="<c:out value="${property.city}" escapeXml="false" />">
            </div>
            
           
            <div class="form-group">
                <label for="state">State:</label>
                <input type="text" id="state" name="state" required
                       value="<c:out value="${property.state}" escapeXml="false" />">
            </div>
            
             <div class="form-group">
                <label for="country">Country:</label>
                <input type="text" id="country" name="country" required
                       value="<c:out value="${property.country}" escapeXml="false" />">
            </div>
            
             <div class="form-group">
                <label for="rooms">Number of Rooms:</label>
                <input type="number" id="rooms" name="rooms" required
                       value="<c:out value="${property.rooms}" escapeXml="false" />">
            </div>
            
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" id="price" name="price" required
                       value="<c:out value="${property.price}" escapeXml="false" />">
            </div>
     		<!-- 
            <div class="form-group">
            	<label for="imageUrls" >Photos:</label>
				<input type="file" id="imageUrls" class="photosLabel" name="imageUrls" multiple><br><br>
			</div>
			 -->  
			<h2 class="headingContact">Contact Details</h2>
            <div class="form-group">
                <label for="email">Email ID:</label>
                <input type="email" id="email" name="contactDetails.eMail" required
                       value="<c:out value="${property.contactDetails.eMail}" escapeXml="false" />">
            </div>
            <div class="form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="contactDetails.phoneNumber" required
                       value="<c:out value="${property.contactDetails.phoneNumber}" escapeXml="false" />">
            </div>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
