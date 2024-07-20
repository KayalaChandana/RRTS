<%-- 
    Document   : caurosel
    Created on : 16-Dec-2023, 6:48:37 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dual Slider Example</title>
    <!-- Include jQuery and Slick dependencies -->
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <!-- Custom styles -->
    <style>
        /* Add your custom styles here */
        .slider-container {

            display: flex;
            align-items: flex-start;
            box-sizing: border-box;
            overflow: hidden;
            margin-left: 70px;

        }

        body {
            margin: 0;
        }

        .slider {
            flex: 1;
            /* Use flex property to distribute available space */
            box-sizing: border-box;
        }

        .horizontal-slider {
            width: 60%;
            align-self: flex-start;
            box-sizing: border-box;
            margin-right: 10px;
        }

        .vertical-slider {
            width: 30%;

            align-self: center;
        }


        .slider img {
            width: 100%;
            /* Make images fill their container */
            height: auto;
            /* Maintain aspect ratio */
        }




        .hor-slide img {
            height: 400px;
            width: 50rem;
            margin: 50px;
            border-radius: 10px;
            object-fit: cover;
            box-sizing: border-box;
        }

        .ver-slide img {
            height: 120px;
            width: 20rem;
            margin: 10px;
            border-radius: 20px;


        }
    </style>
</head>

<body>
    <!-- Dual Slider Container -->
    <div class="slider-container">
        <!-- Vertical Slider (Moving Upwards) -->

        <!-- Horizontal Slider (Left Side) -->
        <div class="horizontal-slider slider hor-slide" style="width: 60%;">
            <div><img src="C:\Users\ediga\Pictures\R.jpg" alt="Image 1"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (1).jpg" alt="Image 2"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (2).jpg" alt="Image 3"></div>
            <div><img src="C:\Users\ediga\Pictures\R.jpg" alt="Image 1"></div>

            <!-- Add more slides as needed -->
        </div>

        <div class="vertical-slider slider ver-slide mt-5">
            <div><img src="C:\Users\ediga\Pictures\R.jpg" alt="Image 1"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (1).jpg" alt="Image 2"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (2).jpg" alt="Image 3"></div>
            <div><img src="C:\Users\ediga\Pictures\R.jpg" alt="Image 1"></div>
            <!-- Add more slides as needed -->
        </div>
    </div>
    <!-- Initialize Slick sliders -->
    <script>
        $(document).ready(function () {
            $('.vertical-slider').slick({
                autoplay: true,
                autoplaySpeed: 2000,
                vertical: true, // Enable vertical mode
                slidesToShow: 3,
                slidesToScroll: 1,
                arrows: false, // Disable arrows for vertical slider
                draggable: false, // Disable dragging for vertical slider
                pauseOnFocus: false,
                pauseOnHover: false
                // Add more options as needed
            });

            $('.horizontal-slider').slick({
                autoplay: true,
                autoplaySpeed: 2000,
                slidesToShow: 1,
                slidesToScroll: 1,
                vertical: false, // Horizontal mode (default)
                // Add more options as needed
            });
        });
    </script>

    <div class="wave-container">
        <div class="custom-shape-divider-bottom-1700979296">
            <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120"
                preserveAspectRatio="none">
                <path
                    d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z"
                    opacity=".25" class="shape-fill"></path>
                <path
                    d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z"
                    opacity=".5" class="shape-fill"></path>
                <path
                    d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z"
                    class="shape-fill"></path>
            </svg>
        </div>
    </div>
</body>

</html>