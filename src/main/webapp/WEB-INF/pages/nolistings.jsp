<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>No Listings Available</title>
  <style>
  	
	* {
	  margin: 0;
	  padding: 0;
	  box-sizing: border-box;
	}
	
	body {
	  font-family: Arial, sans-serif;
	  background-color: #f5f5f5;
	  color: #333;
	}
	
	.container {
	  max-width: 800px;
	  margin: 0 auto;
	  padding: 40px;
	  text-align: center;
	}
	
	.no-listings-image {
	  max-width: 100%;
	  height: auto;
	  margin-bottom: 30px;
	}
	
	h1 {
	  font-size: 36px;
	  margin-bottom: 20px;
	}
	
	p {
	  font-size: 18px;
	  margin-bottom: 30px;
	}
	
	.suggestions {
	  text-align: left;
	  background-color: #fff;
	  padding: 30px;
	  border-radius: 8px;
	  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
	}
	
	.suggestions h2 {
	  font-size: 24px;
	  margin-bottom: 20px;
	}
	
	.suggestions h3 {
	  font-size: 18px;
	  margin-bottom: 10px;
	}
	
	.suggestions li {
	  margin-bottom: 20px;
	}
	
	.suggestions p {
	  font-size: 16px;
	  margin-bottom: 0;
	}
  </style>
</head>
<body>
  <div class="container">
    <img src="no-listings.jpg" alt="No Listings Available" class="no-listings-image">
    <h1>No Listings Available</h1>
    <p>Oops, it looks like there are no rental listings in your area at the moment.</p>
    <div class="suggestions">
      <h2>Don't worry, we're working hard to expand our inventory.</h2>
      <p>In the meantime, here are a few suggestions to help you find your perfect rental:</p>
      <ul>
        <li>
          <h3>1. Expand Your Search Area</h3>
          <p>Try broadening your search to nearby neighborhoods or cities. You might find the perfect rental just a short distance away.</p>
        </li>
        <li>
          <h3>2. Check Back Regularly</h3>
          <p>We're constantly adding new listings, so be sure to check back frequently. You can also sign up for email alerts to be notified when new properties become available.</p>
        </li>
        <li>
          <h3>3. Consider Nearby Alternatives</h3>
          <p>If you're open to exploring other options, consider looking into short-term vacation rentals or extended-stay hotels in the area. These can sometimes be good alternatives when long-term rentals are scarce.</p>
        </li>
        <li>
          <h3>4. Contact Us for Assistance</h3>
          <p>If you need help finding a rental, don't hesitate to reach out to our customer support team. We'll do our best to assist you in your search.</p>
        </li>
      </ul>
      <p>We apologize for the inconvenience and hope you'll find your dream rental soon. Please let us know if there's anything else we can do to help!</p>
    </div>
  </div>
</body>
</html>