<%-- 
    Document   : homepage
    Created on : 16-Dec-2023, 6:50:16 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <!-- Load Font Awesome from CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <link rel='stylesheet' href='[5](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css)'>
    <link href="[6](https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css)" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
        .logo {
            width: 100px;
            height: 100px;
            position: absolute;
            left: 60px;
            top: 20px;
        }
        
        .logo-text {
            height: 65px;
            position: absolute;
            top: 40;
            left: 40;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 20px;
        }
        
        .container1 {
            position: relative;
            text-align: center;
            color: white;
            height: 1330px;
        }
        
        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        
        .person-icon {
            font-size: 20px;
            /* adjust the size of the icon */
            color: green;
            /* adjust the color of the icon */
            object-fit: cover;
        }
        
        .carousel-container {
            /* Set the width and height of the container */
            width: 50%;
            height: 60%;
            /* Center the container horizontally and vertically */
            margin: auto;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            border-radius: 20px;
        }
        
        .carousel {
            /* Set the width and height of the carousel */
            width: 70%;
            height: 300px;
            /* Use flexbox to align the images horizontally */
            display: flex;
            /* Add some space between the images */
            gap: 10px;
            /* Add curved borders to the carousel */
            border-radius: 20px;
            /* Add a box shadow to the carousel */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            padding: 0px;
            background-color: white;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        
        .carousel img {
            width: 70%;
            height: 300px;
            border-radius: 20px;
        }
        
        .image1 {
            background-image: url("https://cdn.wallpapersafari.com/90/92/p0AH5h.jpg");
        }
        
        .text {
            font-family: fantasy;
            font-size: 34px;
            text-align: center;
        }
        /* Select the image element by its id */
        
        #my-image {
            /* Set the width and height of the image */
            /* Use the border-radius property to create curved corners */
            border-radius: 20px;
            /* Use the border property to add a border around the image */
            border: 5px solid rgba(0, 0, 0, 0.5);
            /* The last value is the opacity of the border */
            /* Use the box-shadow property to add a shadow effect to the image */
            box-shadow: 10px 10px 20px rgba(0, 0, 0, 0.2);
            /* The last value is the opacity of the shadow */
            /* Use the filter property to apply some effects to the image */
            filter: grayscale(50%) contrast(150%) brightness(120%);
            /* You can adjust the values as you like */
            max-width: 79%;
            height: 300px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        
        .contact-icon {
            font-size: 14px;
            color: #007bff;
            margin-right: 15px;
            display: inline-block;
        }
        /* Set the font size, color, and font weight for the contact text */
        
        .contact-text {
            font-size: 15px;
            color: #333333;
            font-weight: bold;
            display: inline-block
        }
        
        .contact-text1 {
            color: white;
            /* Set the text color */
            text-decoration: none;
            /* Remove underlines from links */
            /* Add padding for better spacing */
            margin-right: 15px;
            display: inline-block;
        }
        
        .dropdown {
            float: left;
            overflow: hidden;
        }
        
        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }
        
        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }
        
        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }
        
        .dropdown-content a:hover {
            background-color: #ddd;
        }
        
        .dropdown:hover .dropdown-content {
            display: block;
        }
        
        .login {
            /* Set the background color to white */
            background-color: white;
            /* Set the border color to black */
            border: 2px solid grey;
            /* Set the border radius to 10px to make it curved */
            border-radius: 30px;
            /* Set the font color to black */
            padding: 5px;
            /* Set the cursor to pointer */
            cursor: pointer;
            font-size: 15px;
            color: #333333;
            font-weight: bold;
        }
        /* Define the hover effect for the button */
        
        .login:hover {
            /* Set the background color to grey */
            background-color: grey;
            /* Set the font color to white */
            color: white;
            border: 2px solid grey;
        }
        
        .container4 {
            /* Use a sans-serif font for the text */
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            /* Set the font size and color */
            font-size: 14px;
            color: #333333;
            border-radius: 20px;
            background: linear-gradient(to right, #b0b0b0, #ffffff);
            width: 500px;
            transition: background 0.5s;
            border-radius: 50px 0 0 50px;
            display: flex;
            height: 16vh;
            /* Set the margin of the container to auto to center it */
            margin: auto;
            /* Set the position of the container to relative */
            position: absolute;
            top: 670px;
            left: 700px;
        }
        
        .user-matter {
            text-align: center;
            position: relative;
            bottom: 58px;
            left: 130px;
        }
        
        .user {
            position: relative;
            text-align: center;
            right: 30px;
            left: 14px;
        }
        /* CSS code for the circular button */
        
        #top-button {
            display: none;
            /* Hide the button by default */
            position: fixed;
            /* Position the button */
            bottom: 20px;
            /* Place the button at the bottom of the page */
            right: 30px;
            /* Place the button 30px from the right */
            z-index: 99;
            /* Make sure it does not overlap other elements */
            border: none;
            /* Remove borders */
            outline: none;
            /* Remove outline */
            background-color: #ff6600;
            /* Set a background color */
            color: white;
            /* Set a text color */
            cursor: pointer;
            /* Add a mouse pointer on hover */
            padding: 15px;
            /* Some padding */
            border-radius: 50%;
            /* Rounded corners */
            font-size: 18px;
            /* Increase font size */
        }
        
        #top-button:hover {
            background-color: #555;
            /* Add a dark-grey background on hover */
        }
        
        .color {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 24px;
            font-weight: bold;
            color: orange;
            text-shadow: 2px 2px 4px black;
            border: 2px solid white;
            padding: 10px;
            margin: 10px;
            background: linear-gradient(to right, grey, white, grey);
        }
        
        .articletext {
            align-items: center;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 35px;
            font-weight: bold;
            text-shadow: 2px 2px 4px black;
        }
        
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 1fr;
            grid-gap: 5px;
            padding: 10px;
        }
        
        .grid-item {
            padding: 24px;
        }
        
        .article {
            display: none;
        }
        
        .know-more {
            color: purple;
            font-weight: bold;
            font-size: 20px;
            margin: 10px;
        }
        
        .arrow {
            color: purple;
            font-weight: bold;
            font-size: 20px;
            margin: 10px;
            transform: rotate(0deg);
            transition: transform 0.5s;
        }
        
        .arrow:hover {
            transform: rotate(90deg);
        }
        
        #articles {
            text-decoration: none;
        }
        
        .scroll-text {
            font-family: Arial, sans-serif;
            font-size: 28px;
            font-weight: bold;
            color: orange;
            white-space: nowrap;
            position: absolute;
            left: 100%;
            top: 50%;
            transform: translateY(-50%);
            animation: scroll 8s linear infinite;
            overflow: hidden;
            /* Hide scroll text overflow */
            margin-bottom: 0;
            margin-top: 50px;
            /* Remove the top margin */
            vertical-align: text-bottom;
            /* Align the links to the top */
            display: inline-block;
        }
        
        @keyframes scroll {
            from {
                left: 100%;
            }
            to {
                left: -100%;
            }
        }
        
        .navbar {
            height: 140px;
            width: 100%;
            margin-top: 0;
            /* Remove the top margin */
            vertical-align: top;
            /* Align the links to the top */
            display: inline-block;
        }
        /* Add a black background color to the navbar */
        
        .text1 {
            color: black;
            font-size: 16px;
            cursor: pointer;
        }
        /* Define a class for the active text element */
        
        .active {
            color: purple;
            font-size: 19px;
            font-weight: bold;
        }
        
        .wrapper {
            display: inline-flex;
            list-style: none;
        }
        
        .wrapper .icon {
            position: relative;
            background: black;
            border-radius: 50%;
            padding: 15px;
            margin: 10px;
            width: 50px;
            height: 50px;
            font-size: 18px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: all 0.2s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }
        
        .wrapper .tooltip {
            position: absolute;
            top: 0;
            font-size: 14px;
            background: #ffffff;
            color: #ffffff;
            padding: 5px 8px;
            border-radius: 5px;
            box-shadow: 0 10px 10px rgba(0, 0, 0, 0.1);
            opacity: 0;
            pointer-events: none;
            transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }
        
        .wrapper .tooltip::before {
            position: absolute;
            content: "";
            height: 8px;
            width: 8px;
            background: #ffffff;
            bottom: -3px;
            left: 50%;
            transform: translate(-50%) rotate(45deg);
            transition: all 0.3s cubic-bezier(0.68, -0.55, 0.265, 1.55);
        }
        
        .wrapper .icon:hover .tooltip {
            top: -45px;
            opacity: 1;
            visibility: visible;
            pointer-events: auto;
        }
        
        .wrapper .icon:hover span,
        .wrapper .icon:hover .tooltip {
            text-shadow: 0px -1px 0px rgba(0, 0, 0, 0.1);
        }
        
        .wrapper .facebook:hover,
        .wrapper .facebook:hover .tooltip,
        .wrapper .facebook:hover .tooltip::before {
            background: #1877F2;
            color: #ffffff;
        }
        
        .wrapper .twitter:hover,
        .wrapper .twitter:hover .tooltip,
        .wrapper .twitter:hover .tooltip::before {
            background: #1DA1F2;
            color: #ffffff;
        }
        
        .wrapper .instagram:hover,
        .wrapper .instagram:hover .tooltip,
        .wrapper .instagram:hover .tooltip::before {
            background: #E4405F;
            color: #ffffff;
        }
        
        .wrapper .github:hover,
        .wrapper .github:hover .tooltip,
        .wrapper .github:hover .tooltip::before {
            background: #333333;
            color: #ffffff;
        }
        
        .wrapper .youtube:hover,
        .wrapper .youtube:hover .tooltip,
        .wrapper .youtube:hover .tooltip::before {
            background: #CD201F;
            color: #ffffff;
        }
        
        navbar-nav {
            display: flex;
            justify-content: flex-start;
            /* Align items to the start (left) */
            list-style: none;
            padding-left: 0;
        }
        
        .nav-item {
            margin-right: 15px;
            /* Adjust the spacing between items */
        }
        
        .dropdown {
            margin-left: auto;
            /* Push the dropdown to the right */
        }
    </style>
</head>

<body class="image1">
    <div class="container-sm" id="homepage">
        <img src=/home/student/Downloads/IMG-20231120-WA0039.jpg class="logo" alt="Logo">
        <p class="text"><b>Road Repair And Tracking System</b></p>
    </div>
    <br><br><br><br>
    <nav class="navbar navbar-expand-lg bg-body-se">
        <div class="container-fluid">
            <a class="navbar-brand color" href="#">RRTS</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Resources
              </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">News</a></li>
                            <li><a class="dropdown-item" href="#">Articles</a></li>
                            <li><a class="dropdown-item" href="#">Case studies</a></li>
                            <li><a class="dropdown-item" href="#">Reports</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    </div>
    <div class="container1">
        <img src="/home/student/Downloads/4.jpg" height="50%" width="100%">
        <div class="centered"></div>
    </div>
    <br><br>
    <div class="container">
        <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/home/student/Downloads/IMG-20231120-WA0036.jpg" class="d-block w-100" alt="" width="600" height="660">
                </div>
                <div class="carousel-item">
                    <img src=/home/student/Downloads/IMG-20231120-WA0036.jpg class="d-block w-100" alt="" width="100" height="100">
                </div>
                <div class="carousel-item">
                    <img src=/home/student/Downloads/IMG-20231120-WA0037.jpg class="d-block w-100" alt="" width="100" height="100">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
        </div>
    </div>
    <br><br><br><br><br>
    <center>
        <p class="articletext">Some Articles on Roads</p>
    </center>
    <div class="row g-0 text-center">
        <div class="col-6 col-md-4">
            <div class="grid-item">
                <a href="#" class="text-link text1" data-target="#article1">Roads  have bumps</a><br>
                <a href="#" class="text-link text1" data-target="#article2">Roads lie battered</a><br>
                <a href="#" class="text-link text1" data-target="#article3">Harbour Road repair</a><br>
                <a href="#" class="text-link text1" data-target="#article4"> potholes and  repairs.</a><br>
            </div>
        </div>
        <div class="col-sm-6 col-md-8">
            <div class="grid-item">
                <div id="article1" class="article">
                    <h5><b>Many roads in city have bumps & undulations even after repairs, acknowledges mayor Firhad Hakim</b></h5>
                    <p>Mastic asphalt is a bituminous mixture that has more bitumen content than other mixtures, is to be used for repairing roads Many roads in the city have bumps and undulations even after repairs, mayor Firhad Hakim acknowledged on Saturday
                        morning, about 12 hours after he inspected the condition of roads in the city ahead of Durga Puja.
                        <a href="article1.html" id="articles">
                            <span class="know-more arrow">Know more ➤</span>
                        </a>
                    </p>
                </div>
                <div id="article2" class="article">
                    <h3> Roads across Kolkata lie battered Mayor sets Mahalaya deadline for repairs:</h3>
                    <p>The Bypass service road leading to the Ruby crossing from Avishikta, on the western side, is filled with big craters. Some of the craters span almost the entire width of the service road. “The service road is used by a large number
                        of people moving towards Gariahat. They can avoid the traffic signal at the Ruby crossing if they move along the service road....
                        <a href="article2.html" id="articles">
                            <span class="know-more arrow">Know more ➤</span>
                        </a>
                    </p>
                </div>
                <div id="article3" class="article">
                    <h5><b>KMC using plastic in repair mix for Diamond Harbour Road</b></h5>
                    <p>
                        The stretch of Diamond Harbour Road where the KMC is using plastic in the bituminous mix for repairs. Pradip Sanyal The Calcutta Municipal Corporation (CMC) is repairing a stretch of Diamond Harbour Road using shredded plastic as a component of the bituminous
                        mix, the top layer of a road.
                        <a href="article3.html" id="articles">
                            <span class="know-more arrow">Know more ➤</span>
                        </a>
                    </p>
                </div>

                <div id="article4" class="article">
                    <h3>Road repair suggestions for Calcutta Municipal Corporation</h3>
                    <p>Immediate repairs in Calcutta means patchwork repair that does not last beyond a few spells of rain. Some of Calcutta's busiest roads are in bad shape, including SP Mukherjee Road, Harish Mukherjee Road, Ultadanga Main Road, AJC Bose
                        Road and Cossipore Road. The Park Circus seven-point crossing is in poor shape, too. The gaping potholes suggest the roads were not built in a manner to withstand the type of rain the city gets, engineers said.
                        <a href="article4.html" id="articles">
                            <span class="know-more arrow">Know more ➤</span>
                        </a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <br><br><br><br><br><br><br>
    <footer class="footer text-white py-4 " style="background-color:white;">
        <div class="container">
            <div class="row">
                <div class="col">I'm sorry, but I could not understand your request. It seems like you have some spelling errors in your message. Could you please check and correct them before sending it again? Thank you for your cooperation. </div>
            </div>
            <hr>
            <div class="row justify-content-center">
                <div class="col-3">
                    <a href="">privacy policy</a><br>
                    <a href="">FAQ's</a><br>
                    <a href="">Terms & Conditions</a><br>
                </div>
                <div class="col-2">
                    <a href="">ContactUs</a><br>
                    <a href="">Technical FAQ's</a><br>
                    <a href="">Disclaimer</a><br>
                </div>
            </div>
            <br><br>
            <div class="row justify-content-end">
                <div class="col-8">
                    <!-- Social media links -->
                    <h5 class="mt-2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Find us on</h5><br>
                    <ul class="wrapper">
                        <li class="icon facebook">
                            <span class="tooltip">Facebook</span>
                            <span><i class="fa fa-facebook-f"></i></span>
                        </li>
                        <li class="icon twitter">
                            <span class="tooltip">Twitter</span>
                            <span><i class="fa fa-twitter"></i></span>
                        </li>
                        <li class="icon instagram">
                            <span class="tooltip">Instagram</span>
                            <span><i class="fa fa-instagram"></i></span>
                        </li>
                        <li class="icon github">
                            <span class="tooltip">Github</span>
                            <span><i class="fa fa-github"></i></span>
                        </li>
                        <li class="icon youtube">
                            <span class="tooltip">Youtube</span>
                            <span><i class="fa fa-youtube"></i></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <button onclick="topFunction()" id="top-button" title="Go to top">Top</button>

    <script>
        // JavaScript code for the button functionality
        // Get the button
        var mybutton = document.getElementById("top-button");

        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function() {
            scrollFunction()
        };

        function scrollFunction() {
            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                mybutton.style.display = "block";
            } else {
                mybutton.style.display = "none";
            }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
            document.body.scrollTop = 0; // For Safari
            document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
        }
    </script>

    <script>
        var i = 0;

        function showMore() {
            var dots = document.getElementById("dots");
            var moreText = document.getElementById("more");
            var btnText = document.getElementById("myBtn");

            if (i == 0) {
                dots.style.display = "none";
                moreText.style.display = "inline";
                btnText.innerHTML = "Show less";
                i = 1;
            } else {
                dots.style.display = "inline";
                moreText.style.display = "none";
                btnText.innerHTML = "Show more";
                i = 0;
            }
        }
    </script>
    <!-- JavaScript code for counter animation -->
    <script>
        // Get all counter elements
        const counters = document.querySelectorAll(".counter");

        // Loop through each counter element
        counters.forEach((counter) => {
            // Set the initial count to zero
            counter.innerText = "0";

            // Define a function to update the count
            const updateCounter = () => {
                // Get the target number from the data attribute
                const target = +counter.getAttribute("data-target");

                // Get the current count
                const count = +counter.innerText;

                // Get the animation speed from the data attribute
                const speed = +counter.getAttribute("data-speed");

                // Calculate the increment value
                const increment = target / speed;

                // Check if the count is less than the target
                if (count < target) {
                    // Increase the count by the increment value and round it
                    counter.innerText = `${Math.ceil(count + increment)}`;

                    // Call the function again after 1 millisecond
                    setTimeout(updateCounter, 1);
                } else {
                    // Set the count to the target
                    counter.innerText = target;
                }
            };

            // Call the function to start the animation
            updateCounter();
        });
    </script>
    <script>
        // Get the button element by its id
        var btn = document.getElementById("btn");

        // Add a click event listener to the button
        btn.addEventListener("click", function() {
            // Check if the button has the top class
            if (btn.classList.contains("top")) {
                // Remove the top class and add the bottom class
                btn.classList.remove("top");
                btn.classList.add("bottom");
                // Scroll to the bottom of the page
                window.scrollTo(0, document.body.scrollHeight);
            } else {
                // Remove the bottom class and add the top class
                btn.classList.remove("bottom");
                btn.classList.add("top");
                // Scroll to the top of the page
                window.scrollTo(0, 0);
            }
        });
    </script>
    <script>
        $(document).ready(function() {
            // When a text link is clicked
            $(".text-link").click(function(e) {
                e.preventDefault(); // Prevent default action
                var target = $(this).data("target"); // Get the target article id
                $(".article").hide(); // Hide all articles
                $(target).show(); // Show the target article
            });
        });
    </script>
    <script>
        // Get all the text elements with the class name "text"
        var texts = document.getElementsByClassName("text1");

        // Loop through the text elements and add a click event listener to each one
        for (var i = 0; i < texts.length; i++) {
            texts[i].addEventListener("click", function() {
                // Remove the active class from the previous text element, if any
                var previous = document.querySelector(".active");
                if (previous) {
                    previous.classList.remove("active");
                }

                // Add the active class to the current text element
                this.classList.add("active");
            });
        }
    </script>
</body>

</html>