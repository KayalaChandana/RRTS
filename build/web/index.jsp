
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RRTS</title>
    <!DOCTYPE html>
    <html lang="en">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>

    <!--font awesome icons-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />




    <!--jquery links for carousel slides-->
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <link rel="stylesheet" href="home_1.css">

</head>

<body style="background:linear-gradient(to right, #FF8C00, #FFD700);">

    <video id="video-bg" autoplay muted loop>
        <source src="homevideo.mp4" type="video/mp4">
        <!-- Add additional source elements for different video formats if needed -->
        Your browser does not support the video tag.
    </video>

    <div id="video-controls">
        <!-- Add your buttons with onclick events -->
        <button class="control-button" type="button" style="background-color: red;"
            onclick="redirectToPage('loginpage.jsp')">
            <span class="fa fa-arrows-alt spin-icon"></span>Login Now
        </button>

        <button class="control-button" type="button" style="background-color: orange;"
            onclick="redirectToPage('user_Registration.jsp')">
            <span class="fa fa-arrows-alt spin-icon"></span>Registration Now
        </button>

        <button class="control-button" type="button" style="background-color:rgb(81, 81, 246);"
            href="https://morth.nic.in/road-safety">
            <span class="fa fa-arrows-alt spin-icon" ></span>Road Safety
        </button>
    </div>
    <div class="top-container">
        <div class="header-content">
            <div class="container-1 d-flex justify-content-between">
                <div class="d-flex align-items-center justify-content-between">
                    <img src="R_logo.png" alt="logo" class="logo">
                    <div class="logo-text">
                        <p>
                        <h3>Road Repair</h3><span class="small-text">Tracking System</span></p>
                    </div>
                </div>
                <div>
                    <img src="g20.png" alt="Another Image" class="right-corner-image">
                </div>
            </div>

            <div>
                <nav class="navbar navbar-expand-lg" style="background-color: white">
                    <div class=" container-fluid">
                        <a class="navbar-brand " href="#"></a>

                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active me-5" aria-current="page" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="aboutus.jsp" tabindex="0">About</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle me-5" href="#" role="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        Resources
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="main.pdf">Articles</a></li>
                                        <li><a class="dropdown-item" href="https://www.bing.com/ck/a?!&&p=428859fe7d123b66JmltdHM9MTcwNDY3MjAwMCZpZ3VpZD0wMzU3OGY3MS1hY2M2LTY0MmEtMTBjMy05YzA0YWQwNTY1NjQmaW5zaWQ9NTIxMQ&ptn=3&ver=2&hsh=3&fclid=03578f71-acc6-642a-10c3-9c04ad056564&psq=indian+road+case+studies&u=a1aHR0cHM6Ly9pbmRpYWFpLmdvdi5pbi9hcnRpY2xlL2FpLWludGVncmF0aW9uLWZvci1lbmhhbmNpbmctcm9hZC1zYWZldHktaW4taW5kaWEtdGhyZWUtY2FzZS1zdHVkaWVz&ntb=1">Case Studies</a></li>
                                        <li><a class="dropdown-item" href="https://www.bing.com/ck/a?!&&p=2bafb7001f139cf7JmltdHM9MTcwNDY3MjAwMCZpZ3VpZD0wMzU3OGY3MS1hY2M2LTY0MmEtMTBjMy05YzA0YWQwNTY1NjQmaW5zaWQ9NTI0MQ&ptn=3&ver=2&hsh=3&fclid=03578f71-acc6-642a-10c3-9c04ad056564&psq=road+repair+articles&u=a1aHR0cHM6Ly93d3cud29ybGRoaWdod2F5cy5jb20vd2g4L3doOS93aDEwL2ZlYXR1cmUvaW1wb3J0YW5jZS1yb2FkLW1haW50ZW5hbmNl&ntb=1">News</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="#" onclick="openPopup()">contactUs</a>
                                </li>
                                <li class="nav-item me-5">
                                    <a class="nav-link " href="Roads - Session A.pptx" aria-disabled="true">Explore</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="#FAQ">FAQs</a>
                                </li>
                            </ul>
                            <form class="d-flex">
                                <input class="form-control me-2" style="outline: orange; border: 100%;" type="search"
                                    placeholder="Search" aria-label="Search">
                                <button class="btn me-5" style="background-color:rgb(255, 174, 0);"
                                    type="submit">Search</button>
                            </form>

                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>

<div class="popup-container" id="contactPopup">
        <h2>Contact Us</h2>
        <p>Feel free to reach out to us for any inquiries or assistance.</p>
        <p>Email: info@example.com</p>
        <p>Phone: +1 (555) 123-4567</p>
        <span class="close-btn" onclick="closePopup()">Close</span>
    </div>
</body>


<div class="slider-container">
    <!-- Vertical Slider (Moving Upwards) -->

    <!-- Horizontal Slider (Left Side) -->
    <div class="horizontal-slider slider hor-slide" style="width: 60%;">
        <div><img src="sildepic.jpeg" alt="Image 1"></div>
        <div><img src="sildepic1.jpeg" alt="Image 2"></div>
        <div><img src="slidepic3.jpg" alt="Image 3"></div>
        <div><img src="slidepic4.jpg" alt="Image 1"></div>

        <!-- Add more slides as needed -->
    </div>

    <div class="vertical-slider slider ver-slide mt-4 mb-5">
        <div><img src="sildepic.jpeg" alt="Image 1"></div>
        <div><img src="sildepic1.jpeg" alt="Image 2"></div>
        <div><img src="slidepic3.jpg" alt="Image 3"></div>
        <div><img src="slidepic4.jpg" alt="Image 1"></div>
        <!-- Add more slides as needed -->
    </div>
</div>
<!-- Initialize Slick sliders -->
<script>
    $(document).ready(function () {
        $('.vertical-slider').slick({
            autoplay: true,
            autoplaySpeed: 1000,
            vertical: true, // Enable vertical mode
            slidesToShow: 3,
            slidesToScroll: 1,
            arrows: false, // Disable arrows for vertical slider
            draggable: false, // Disable dragging for vertical slider
            pauseOnFocus: false,
            pauseOnHover: false,
            speed: 1000
            // Add more options as needed
        });

        $('.horizontal-slider').slick({
            autoplay: true,
            autoplaySpeed: 1000,
            slidesToShow: 1,
            slidesToScroll: 1,
            vertical: false,
            speed: 1000
            // Horizontal mode (default)
            // Add more options as needed
        });
    });
</script>
<!-- Content Section -->
<div class="content">
    <h2 class="animate-characters">
        Welcome to <strong> RRTS</strong> website, where community meets infrastructure
        improvement.
    </h2>
    <br>
    <br>
    <p class="para1">
    <ul style="font-size: large;">

        <li>
            <i class="fas fa-arrows-alt spin-icon"></i>
            We've simplified the <strong>road repair</strong> process to empower you in reporting issues
            effortlessly.
            Your voice
            matters, and we're here to make sure it's heard. Our platform not only streamlines the complaint
            process
            but
            also
            keeps you informed with real-time updates on the status of your reported issues. Watch as our
            dedicated
            teams work
            to enhance your community's road network.
        </li>
        <br>
        <br>
        <li>
            <i class="fas fa-arrows-alt spin-icon"></i>
            We believe in transparency, providing open access to the status of all reported complaints. By actively
            involving
            residents, we foster a sense of community responsibility, ensuring a collaborative approach to road
            repair.
        </li>
        <br>
        <br>
        <li>
            <i class="fa fa-arrows-alt spin-icon"></i>
            Let's build safer, more resilient roads together. Report an issue now and be part of the momentum toward
            a
            better-connected community! Join us in creating safer, well-maintained roads. Report an issue today and
            be
            part
            of the journey toward a more connected and resilient community!
        </li>
        <br>
        <br>
        <li>
            <i class="fas fa-arrows-alt spin-icon"></i>
            <strong>Join us in creating safer, well-maintained roads. Report an issue today and be part of the
                positive
                change!</strong>
        </li>
    </ul>
    </p>

    <br>
    <p>
        [Sign Up / Report an Issue] [Explore Our Initiatives] [Contact Us]
    </p>
</div>

<div class="line">
</div>


<div class="content" style="background-color: grey; border-radius: 10px;">
    <div class="container-2">

        <p class="articletext text-center" style="font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;  font-weight: 900; 
                font-size: xx-large; color:orange;">
            <i class="fas fa-arrows-alt spin-icon"></i>

            Road Articles
            <i class="fas fa-arrows-alt spin-icon"></i>
        </p>


        <div class="row g-3 text-center container-fluid">
            <!-- Article 1 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title animate-characters">Many roads in city have bumps...</h5>
                        <p class="card-text">Mastic asphalt is a bituminous mixture that has more bitumen
                            content...</p>
                        <a href="article1.jsp" class="btn btn-primary">Know more ?</a>
                    </div>
                </div>
            </div>

            <!-- Article 2 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title animate-characters">Roads across Kolkata lie battered...</h5>
                        <p class="card-text">The Bypass service road leading to the Ruby crossing from
                            Avishikta...</p>
                        <a href="article2.jsp" class="btn btn-primary">Know more ?</a>
                    </div>
                </div>
            </div>

            <!-- Article 3 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title animate-characters">KMC using plastic in repair mix for Diamond
                            Harbour Road</h5>
                        <p class="card-text">The stretch of Diamond Harbour Road where the KMC is using
                            plastic...</p>
                        <a href="article3.jsp" class="btn btn-primary">Know more ?</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-3 text-center container-fluid">
            <!-- Article 1 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title animate-characters">Many roads in city have bumps...</h5>
                        <p class="card-text">Mastic asphalt is a bituminous mixture that has more bitumen
                            content...</p>
                        <a href="article1.jsp" class="btn btn-primary">Know more ?</a>
                    </div>
                </div>
            </div>

            <!-- Article 2 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title  animate-characters">Roads across Kolkata lie battered...</h5>
                        <p class="card-text">The Bypass service road leading to the Ruby crossing from
                            Avishikta...</p>
                        <a href="article2.jsp" class="btn btn-primary">Know more ?</a>
                    </div>
                </div>
            </div>

            <!-- Article 3 -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title animate-characters">KMC using plastic in repair mix for Diamond
                            Harbour Road</h5>
                        <p class="card-text">The stretch of Diamond Harbour Road where the KMC is using
                            plastic...</p>
                        <a href="article3.jsp" class="btn btn-primary">Know more ?</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Additional Articles can be added similarly -->

    </div>
</div>

<div class="line">
</div>
<div class="container mt-5" id="FAQ">
    <div class="wave top"></div>
    <div class="accordion">
        <div class="accordion-item">
            <div class="accordion-header">
                How can I report a road repair issue?
                <span class="arrow">&#x25B6;</span>
            </div>
            <div class="accordion-content">
                <p>
                    To report a road repair issue, you can reach out to our dedicated hotline at [8889988899] or
                    submit a written complaint on our website. We encourage you to provide detailed information,
                    including the location, description of the issue, and any other relevant details.
                </p>
            </div>
        </div>
        <div class="accordion-item">
            <div class="accordion-header">
                Can I track the status of my reported road repair request?
                <span class="arrow">&#x25B6;</span>
            </div>
            <div class="accordion-content">
                <p>
                    Yes, you can track the status of your reported road repair request by visiting our website.
                    Use
                    the provided tracking tool and enter your unique reference number to get real-time updates
                    on
                    the progress of repairs.
                </p>
            </div>
        </div>
        <!-- Add more accordion items as needed -->
        <div class="accordion-item">
            <div class="accordion-header">
                How are repair priorities determined?
                <span class="arrow">&#x25B6;</span>
            </div>
            <div class="accordion-content">
                <p>Repair priorities are determined by our experienced supervisors. They assess the severity of
                    the road condition, considering factors such as safety risks, traffic volume, and the type
                    of
                    locality. Emergency repairs and critical issues are prioritized to ensure public safety.</p>
            </div>
        </div>
        <div class="accordion-item">
            <div class="accordion-header">
                Can I request road repair statistics for my area?
                <span class="arrow">&#x25B6;</span>
            </div>
            <div class="accordion-content">
                <p>
                    Absolutely! To request road repair statistics for your area, please contact our office or
                    submit
                    a request through our website. We'll provide you with comprehensive information on the
                    number
                    and types of repairs carried out in your locality.
                </p>
            </div>
        </div>
        <div class="accordion-item">
            <div class="accordion-header">
                Can residents participate in community efforts to improve road conditions?
                <span class="arrow">&#x25B6;</span>
            </div>
            <div class="accordion-content">
                <p>
                    Absolutely! We encourage community involvement in maintaining road conditions. Residents can
                    participate in awareness campaigns, report issues promptly, and follow safety guidelines
                    during
                    repairs to contribute to the overall improvement of road infrastructure.
                </p>
            </div>
        </div>
        <div class="accordion-item">
            <div class="accordion-header">
                How can I contact the mayor to discuss road repair concerns at a broader level?
                <span class="arrow">&#x25B6;</span>
            </div>
            <div class="accordion-content">
                <p>
                    Residents can contact the mayor's office through the designated contact channels to discuss
                    road
                    repair concerns at a broader level. The mayor welcomes input from the community and works
                    towards
                    addressing concerns to improve the city's infrastructure.
            </div>
        </div>
    </div>

</div>
</div>

<footer id="footer">
    <div class="container-3">
        <div class="row">
            <div class="col-md-3">
                    <h4>OUR MISSION</h4>
                    <p style="font-size: large;">Welcome to the Rapid Road Repair System (RRTS), a cutting-edge
                        initiative
                        to enhance the efficiency and effectiveness of road repair processes in our vibrant city.
                        At RRTS, our mission is to revolutionize road repair management by leveraging advanced
                        technologies
                        and streamlined processes. </p>
                    <a href="aboutus.jsp" class="btn btn-primary">Know More</a>
                </div>
            <div class="col-md-3">
                <h4>EXPLORE</h4>
                <ul>
                    <li><a href="https://www.bing.com/ck/a?!&&p=428859fe7d123b66JmltdHM9MTcwNDY3MjAwMCZpZ3VpZD0wMzU3OGY3MS1hY2M2LTY0MmEtMTBjMy05YzA0YWQwNTY1NjQmaW5zaWQ9NTIxMQ&ptn=3&ver=2&hsh=3&fclid=03578f71-acc6-642a-10c3-9c04ad056564&psq=indian+road+case+studies&u=a1aHR0cHM6Ly9pbmRpYWFpLmdvdi5pbi9hcnRpY2xlL2FpLWludGVncmF0aW9uLWZvci1lbmhhbmNpbmctcm9hZC1zYWZldHktaW4taW5kaWEtdGhyZWUtY2FzZS1zdHVkaWVz&ntb=1"><i class="fas fa-newspaper"></i> News</a></li>
                    <li><a href="main.pdf"><i class="fas fa-file-alt"></i> Articles</a></li>
                    <li><a href="https://www.bing.com/ck/a?!&&p=428859fe7d123b66JmltdHM9MTcwNDY3MjAwMCZpZ3VpZD0wMzU3OGY3MS1hY2M2LTY0MmEtMTBjMy05YzA0YWQwNTY1NjQmaW5zaWQ9NTIxMQ&ptn=3&ver=2&hsh=3&fclid=03578f71-acc6-642a-10c3-9c04ad056564&psq=indian+road+case+studies&u=a1aHR0cHM6Ly9pbmRpYWFpLmdvdi5pbi9hcnRpY2xlL2FpLWludGVncmF0aW9uLWZvci1lbmhhbmNpbmctcm9hZC1zYWZldHktaW4taW5kaWEtdGhyZWUtY2FzZS1zdHVkaWVz&ntb=1"><i class="fas fa-book"></i> Case Studies</a></li>
                    <li><a href="#"><i class="fas fa-cogs"></i> Resources</a></li>
                    <li><a href="https://morth.nic.in/annual-report"><i class="fas fa-handshake"></i> Schemes</a></li>
                    <li><a href="https://morth.nic.in/national-highways-act-1956"><i class="fas fa-gavel"></i> Rules</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h4>Quick Links</h4>
                <ul class="nav-list">
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#"><i class="fas fa-book"></i> Resources</a></li>
                    <li><a href="loginpage.jsp"><i class="fas fa-sign-in-alt"></i> Login</a></li>
                    <li><a href="#FAQ"><i class="fas fa-question-circle"></i> FAQs</a></li>
                    <li><a href="user_Registration.jsp"><i class="fas fa-user-plus"></i> Register</a></li>
                    <li><a href="#" onclick="openPopup()"><i class="fas fa-envelope"></i> Contact Us</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <div>
                    <div>
                        <!-- Social media links -->
                        <h5 class="mt-5" style="align-content: center;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Follow
                            Us </h5><br>
                        <ul class="wrapper">
                            <li class="icon facebook">
                                <span class="tooltip">Facebook</span>
                                <span><i class="fab fa-facebook-f"></i></span>
                            </li>
                            <li class="icon twitter">
                                <span class="tooltip">Twitter</span>
                                <span><i class="fab fa-twitter"></i></span>
                            </li>
                            <li class="icon instagram">
                                <span class="tooltip">Instagram</span>
                                <span><i class="fab fa-instagram"></i></span>
                            </li>
                            <li class="icon github">
                                <span class="tooltip">Github</span>
                                <span><i class="fab fa-github"></i></span>
                            </li>
                            <li class="icon youtube">
                                <span class="tooltip">Youtube</span>
                                <span><i class="fab fa-youtube"></i></span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div class="scroll-to-top-container">
    <button id="top-button" onclick="topFunction()">Up</button>
</div>

<footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50">
    <div>
        <small>Copyright &copy; Road Repair Tracking System</small>
    </div>
</footer>

<script>
  
        document.addEventListener('DOMContentLoaded', function () {
            // JavaScript code for the button functionality
            // Get the buttons
            var loginButton = document.querySelector('.control-button[style="background-color: red;"]');
            var registerButton = document.querySelector('.control-button[style="background-color: orange;"]');
            var explorationButton = document.querySelector('.control-button[style="background-color:rgb(81, 81, 246);"]');

            // Add onclick events to each button
            loginButton.addEventListener('click', function () {
                redirectToPage('loginpage.jsp');
            });

            registerButton.addEventListener('click', function () {
                redirectToPage('user_Registration.jsp');
            });

            explorationButton.addEventListener('click', function () {
                redirectToPage('https://morth.nic.in/road-safety');
            });

            function redirectToPage(page) {
                window.location.href = page;
            }
        });
    
</script>

<script>
    // Get all elements with the class "counter-loaded"
    var counterElements = document.querySelectorAll(".counter-loaded");

    // Set an initial count value for each counter
    var counts = [100, 100];

    // Set a very fast interval for updating the counters (e.g., every 10 milliseconds)
    var intervalIds = [];

    for (var i = 0; i < counterElements.length; i++) {
        // Start interval for each counter
        intervalIds[i] = setInterval(createUpdateCounter(i), 10);
    }

    // Set a limit for each counter
    var limits = [150, 120]; // Set your desired limits for each counter

    // Function to create an updateCounter function for a specific index
    function createUpdateCounter(index) {
        return function () {
            // Update the count value (you can replace this with your logic)
            counts[index] += 1;

            // Update the counter element with the new count value
            counterElements[index].textContent = counts[index];

            // Check if the count has reached the limit
            if (counts[index] >= limits[index]) {
                // Stop the interval when the limit is reached
                clearInterval(intervalIds[index]);
            }
        };
    }
</script>

<script>
    // JavaScript code for the button functionality
    // Get the button
    var mybutton = document.getElementById("top-button");

    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
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
    // JavaScript code for the footer
    // You can use jQuery or any other library to add some interactivity to the footer
    // For example, you can use the following code to toggle the visibility of the footer on scroll

    $(window).scroll(function () {
        // Get the scroll position
        var scroll = $(window).scrollTop();

        // Get the height of the window
        var height = $(window).height();

        // Get the height of the footer
        var footerHeight = $("#footer").height();

        // If the scroll position is greater than the height of the window minus the height of the footer, show the footer
        if (scroll > height - footerHeight) {
            $("#footer").fadeIn();
        } else {
            // Otherwise, hide the footer
            $("#footer").fadeOut();
        }
    });

</script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const accordionItems = document.querySelectorAll('.accordion-item');

        accordionItems.forEach(item => {
            const header = item.querySelector('.accordion-header');

            header.addEventListener('click', function () {
                item.classList.toggle('active');
            });
        });
    });

</script>

<script>
    $(document).ready(function () {
        $('.text-link').on('click', function (e) {
            e.preventDefault(); // Prevent the default behavior of the anchor tags
            var target = $(this).data('target');
            $('.article').removeClass('active');
            $(target).addClass('active');
        });
    });
</script>


<script>
    $(document).ready(function () {
        const navbar = $('.navbar');
        const stickyClass = 'sticky';

        $(window).scroll(function () {
            if ($(this).scrollTop() > 0) {
                navbar.addClass(stickyClass);
            } else {
                navbar.removeClass(stickyClass);
            }
        });
    });

</script>
<script>
    // Function to animate counting
    function countUp(elementId, end, duration) {
        let current = 0;
        const increment = end / duration;
        const counterElement = document.getElementById(elementId);
        const timer = setInterval(function () {
            current += increment;
            counterElement.textContent = Math.round(current);
            if (current >= end) {
                clearInterval(timer);
            }
        }, 1000 / 60); // 60 frames per second
    }

    // Trigger counting animations
    countUp('newCounter', 1000, 2000); // Adjust duration as needed
</script>
<script>
    // Function to update the counter
    function updateCounter(elementId, current, end) {
        const counterElement = document.getElementById(elementId);
        counterElement.textContent = current;

        if (current < end) {
            setTimeout(function () {
                updateCounter(elementId, current + 1, end);
            }, 1000); // Update every 1000 milliseconds (1 second)
        }
    }

    // Trigger counting animations
    updateCounter('newCounter', 0, 1000); // Adjust the end value as needed
</script>
<script>
        function openPopup() {
            document.getElementById('contactPopup').style.display = 'block';
        }

        function closePopup() {
            document.getElementById('contactPopup').style.display = 'none';
        }
    </script>



</body>

</html>