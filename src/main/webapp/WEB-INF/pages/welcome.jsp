<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HomePage</title>
    <!-- <link rel="stylesheet" href="style.css"> -->
    <style>
        /* Replacing Tailwind CSS classes with equivalent CSS code */
        body.transition-all {
            transition-duration: 300ms;
            margin: 0;
            padding: 0;'
        }

        nav {
            background-color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
        }

        nav a {
            color: #000;
            margin-left: 1rem;
            margin-right: 1rem;
            font-family: 'Mono';
            font-size: 1.125rem; /* Equivalent to text-lg */
        }

        .add {
            font-size: 1.875rem; /* Equivalent to text-3xl */
            background-color: transparent;
            padding-bottom: 0.5rem;
            border: 1px solid #000;
            height: auto;
            width: 3rem; /* Equivalent to w-12 */
            text-align: center;
            border-radius: 0.25rem; /* Equivalent to rounded-sm */
            transition-duration: 300ms;
            font-weight: 600; /* Equivalent to font-semibold */
        }

        .add:hover {
            background-color: #000;
            color: #fff;
        }

        .login-btn {
            height: 10px;
            width: 6rem; /* Equivalent to w-24 */
            padding-top: 0.25rem;
            padding-bottom: 0.25rem; 
            background-color: transparent;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            border: none;
            transition-duration: 2ms;
        }

        .login-btn:hover {
            color: green; /* Equivalent to text-green-600 */
        }

        .signup-btn {
            margin-right: 4px; /* Equivalent to mr-10 */
            height: 2.25rem; /* Equivalent to h-9 */
            width: 6rem; /* Equivalent to w-24 */
            padding-top: 0.25rem;
            background-color: transparent;
            padding-bottom: 0.25rem;
            background-color: #000;
            color: #fff;
            border: 1px solid #000;
            transition-duration: 300ms;
            border-radius: 9999px; /* Equivalent to rounded-full */
            font-family: 'Mono';
            font-weight: 600; /* Equivalent to font-semibold */
        }

        .signup-btn:hover {
            background-color: #4B5563; /* Equivalent to hover:bg-gray-600 */
        }

        .relative {
            position: relative;
        }

        .absolute {
            position: absolute;
        }

        .top-24 {
            top: 6rem; /* Equivalent to top-24 */
        }

        .left-56 {
            left: 14rem; /* Equivalent to left-56 */
        }

        .text-black {
            color: #000;
        }

        .font-bold {
            font-weight: bold;
        }

        /* New CSS for images */
        
        .heroImg{
            width: 100%;
        }
        
        .navbarLinks{
            text-decoration: none;
        }
        .heroSection{
            background-size: cover;
            width: 100%;
        }
        
        .content-section {
            margin-top: 20px;
            padding: 0 25px;
        }

        .section-heading {
            font-weight: bold;
            font-size: 1.875rem;
        }

        .section-subtitle {
            font-size: 1rem;
            margin-top: 5px;
        }

        /* Image Container Styles */
        .image-container {
            display: flex;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .house-img {
            width: calc(33.33% - 20px);
            height: 300px; /* Set the desired height for all images */
            margin-right: 20px;
            margin-bottom: 20px;
            position: relative;
        }

        .house-img img {
            width: 100%;
            height: 100%; /* Ensure the image fills its container */
            border-radius: 10px; /* Rounded corners */
        }

        .image-overlay {
            position: absolute;
            top: 10px;
            left: 10px;
            color: #fff;
            font-weight: bold;
        }

        /* Services Section Styles */
        .services-section {
            margin-top: 50px; 
        }

        .services-section h1 {
            font-weight: bold;
            padding-top: 20px;
            padding-left: 30px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }

        .service-box {
            display: flex;
            font-size:larger;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: 600;
        }

        .service-item {
            flex: 1;
            margin-right: 20px;
            margin-left: 50px;
            padding: 20px;
            height: 260px;
            width: 60px;
            border-radius: 10px;
        }

        .tenants {
            background-color: rgb(252, 217, 173);
        }

        .landlords {
            background-color: rgb(251, 194, 176);
        }

        .service-item h2 {
            text-align: center;
        }
        .services-wrapper{
          background-color: #fff;
          padding-bottom: 40px;
        }
        .about-section {
          background-color: #f9f9f9;
          padding: 50px 20px;
          text-align: center;
        }

        .about-content {
          max-width: 600px;
          margin: 0 auto;
        }

        .about-content h2 {
          font-size: 2rem;
          margin-bottom: 20px;
        }

        .about-content p {
          font-size: 1.1rem;
          line-height: 1.6;
          color: #333;
        }
    </style>
    <script>
    // JavaScript function to handle the signup button click event
	    function goToSignup() {
	        window.location.href = 'signup'; // Change 'signup' to the URL or function you want to call
	    }
	    function goToLogin() {
	        window.location.href = 'login'; // Change 'signup' to the URL or function you want to call
	    }
	</script>
</head>
<body class="transition-all">

    <nav>
        <div >
            <a href="#home" class="navbarLinks hover:text-green-600 mx-4 font-mono text-lg">Home</a>
            <a href="#about" class="navbarLinks hover:text-green-600 mx-4 font-mono text-lg">About</a>
            <a href="#services" class="navbarLinks hover:text-green-600 mx-4 font-mono text-lg">Services</a>
        </div>
        <div>
            <!-- <button class="add"> + </button> -->
            <button class="login-btn" onclick="goToLogin()">Log In</button>
            <button class="signup-btn" onclick="goToSignup()" >Sign Up</button> 
            
        </div>
    </nav>  
    
    <div class="relative heroSection" >
        <img class="heroImg" src="images/coverImage.jpg">
        
        <!-- <div class="absolute top-24 left-56">
            <p class="text-black text-4xl font-bold">Unlock the Door to Your Perfect Home with Us!</p>
        </div> -->
    </div>

    <div class="content-section">
        <h1 class="section-heading">Homes For You</h1>
        <p class="section-subtitle">Based on your Location</p>

        <div class="image-container">
            <!-- First Set of Images -->
            <div class="house-img">
                <img src="images/img1.jpg">
                
            </div>
            <div class="house-img">
                <img src="images/img3.jpg">
                
            </div>
            <div class="house-img">
                <img src="images/img6.avif">
                
            </div>
        </div>

        <div class="image-container">
            <!-- Second Set of Images -->
            <div class="house-img">
                <img src="images/img5.jpg">
                
            </div>
            <div class="house-img">
                <img src="images/img9.jpg">
                
            </div>
            <div class="house-img">
                <img src="images/img10.jpg">
         
            </div>
        </div>
    </div>

    <div class="services-wrapper">
    <div class="services-section">
        <h1>Our Services</h1>
        <div class="service-box">
            <div class="service-item tenants">
                <h2>For Tenants</h2>
                <p>Find your dream home with ease. Our platform offers a vast selection of properties in various locations, ensuring you find the perfect place to call home. Browse through our listings, filter by preferences, and apply conveniently online. Say goodbye to endless searching and hello to your new home!</p>

            </div>
            <div class="service-item landlords">
                <h2>For Landlords</h2>
                <p>List your property hassle-free with our comprehensive landlord services. Our platform provides powerful tools to manage your listings and tenants efficiently. From creating detailed property listings to screening potential tenants, we've got you covered. Join our community of landlords and experience seamless property management like never before.</p>

            </div>
        </div>
    </div>
    </div>
    <div class="about-section">
      <div class="about-content">
          <h2>About Us</h2>
          <p>Welcome to our website! We are dedicated to providing you with the best services in finding your dream home. Our team works tirelessly to ensure that your housing needs are met with professionalism and care.</p>
          <p>With years of experience in the real estate industry, we have helped countless individuals and families find their perfect homes. Whether you're looking to rent or buy, we're here to guide you every step of the way.</p>
      </div>
  </div>
	<footer>
        <p>&copy; 2024 Rental Service</p>
    </footer>
</body>
</html>