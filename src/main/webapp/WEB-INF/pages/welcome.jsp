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
        .house-img {
            width: 30%; /* Adjust as needed */
            margin: 0.5rem; /* Adjust as needed */
        }
        .heroImg{
            width: 100%;
        }
        .image-container{
            width: 100%; /* Set the width of the container */
            height: 330px; /* Set the height of the container */
            overflow: hidden; /* Hide any overflow */
        }

        .image-container img {
            width: 100%; /* Make the image fill the container horizontally */
            height: auto; /* Maintain aspect ratio */
            display: block; /* Ensure proper block-level display */
            margin-left: 20px;
        }
        .midImg{
            margin-left: 25px;
        }
        .box{
            display: flex;
        }
        .navbarLinks{
            text-decoration: none;
        }
        .heroSection{
            background-size: cover;
            width: 100%;
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

    <div class="relative justify-start" style="margin-left: 25px; margin-top: 20px;">
        <h1 class="font-semibold text-3xl">Homes For You</h1>
        <p class="font-thin text-base"> Based on your Location</p>
    </div>
    
    <div class="relative">
    <div class="box image-container">
        <!-- First Set of Images -->
        <div class="house-img">
            <img src="images/img1.jpg" class="rounded-xl">
        </div>
        <div class="house-img midImg">
            <img src="images/img3.jpg" class="rounded-xl">
        </div>
        <div class="house-img midImg">
            <img src="images/img6.avif" class="rounded-xl">
        </div>
    </div>

    <div class="box image-container">
        <!-- Second Set of Images -->
        <div class="house-img">
            <img src="images/img5.jpg" class="rounded-xl">
        </div>
        <div class="house-img midImg">
            <img src="images/img9.jpg" class="rounded-xl">
        </div>
        <div class="house-img midImg">
            <img src="images/img10.jpg" class="rounded-xl">
        </div>
    </div>
    </div>

</body>
</html>