<%-- 
    Document   : caurosel1
    Created on : 16-Dec-2023, 6:49:17 pm
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
        body {
            margin: 0;
            /* Reset margin for body */
        }

        .slider-container {
            display: flex;
            align-items: flex-start;
            box-sizing: border-box;
            overflow: hidden;
            /* Ensure no unwanted overflow */
        }

        .horizontal-slider,
        .vertical-slider {
            flex: 1;
            /* Use flex property to distribute available space */
            box-sizing: border-box;
        }

        .slider img {
            width: 100%;
            /* Make images fill their container */
            height: auto;
            /* Maintain aspect ratio */
        }

        .horizontal-slider {
            margin-right: 10px;
            /* Adjust margin as needed */
        }

        /* Optional: Set a max-width for the entire slider container */
        /* .slider-container {
            max-width: 1200px;
            margin: 0 auto; 
        } */
    </style>
</head>

<body>
    <!-- Dual Slider Container -->
    <div class="slider-container">
        <!-- Horizontal Slider (Left Side) -->
        <div class="horizontal-slider slider">
            <div><img src="C:\Users\ediga\Pictures\R.jpg" alt="Image 1"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (1).jpg" alt="Image 2"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (2).jpg" alt="Image 3"></div>
            <!-- Add more slides as needed -->
        </div>

        <!-- Vertical Slider (Moving Upwards) -->
        <div class="vertical-slider slider">
            <div><img src="C:\Users\ediga\Pictures\R.jpg" alt="Image 1"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (1).jpg" alt="Image 2"></div>
            <div><img src="C:\Users\ediga\Pictures\OIP (2).jpg" alt="Image 3"></div>
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
                slidesToShow: 2,
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
</body>

</html>
