<%-- 
    Document   : loginpage
    Created on : 16-Dec-2023, 6:50:36 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>LOGIN</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background: linear-gradient(to right, #FF8C00, #FFD700);
            display: flex;
            justify-content: space-around;
            align-items: center;
            flex-wrap: wrap;
            height: 100vh;
            font-family: "Open Sans";
        }

        .education {
            --bg-color: #ffd861;
            --bg-color-light: #ffeeba;
            --text-color-hover: #4C5656;
            --box-shadow-color: rgba(255, 215, 97, 0.48);
        }

        .credentialing {
            --bg-color: #B8F9D3;
            --bg-color-light: #e2fced;
            --text-color-hover: #4C5656;
            --box-shadow-color: rgba(184, 249, 211, 0.48);
        }

        .wallet {
            --bg-color: #CEB2FC;
            --bg-color-light: #F0E7FF;
            --text-color-hover: #fff;
            --box-shadow-color: rgba(206, 178, 252, 0.48);
        }

        .wallet1 {
            --bg-color: #fcebb2;
            --bg-color-light: #F0E7FF;
            --text-color-hover: #fff;
            --box-shadow-color: rgba(206, 178, 252, 0.48);
        }

        .human-resources {
            --bg-color: #DCE9FF;
            --bg-color-light: #f1f7ff;
            --text-color-hover: #4C5656;
            --box-shadow-color: rgba(220, 233, 255, 0.48);
        }

        .card {
            width: 220px;
            height: 321px;
            background: #fff;
            border-top-right-radius: 10px;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            position: relative;
            box-shadow: 0 14px 26px rgba(0, 0, 0, 0.04);
            transition: all 0.3s ease-out;
            text-decoration: none;
        }

        .card:hover {
            transform: translateY(-5px) scale(1.005) translateZ(0);
            box-shadow: 0 24px 36px rgba(0, 0, 0, 0.11), 0 24px 46px var(--box-shadow-color);
        }

        .card:hover .overlay {
            transform: scale(4) translateZ(0);
        }

        .card:hover .circle {
            border-color: var(--bg-color-light);
            background: var(--bg-color);
        }

        .card:hover .circle:after {
            background: var(--bg-color-light);
        }

        .card:hover p {
            color: var(--text-color-hover);
        }

        .card:active {
            transform: scale(1) translateZ(0);
            box-shadow: 0 15px 24px rgba(0, 0, 0, 0.11), 0 15px 24px var(--box-shadow-color);
        }

        .card p {
            font-size: 17px;
            color: #4C5656;
            margin-top: 30px;
            z-index: 1000;
            transition: color 0.3s ease-out;
        }

        .circle {
            width: 131px;
            height: 131px;
            border-radius: 50%;
            background: #fff;
            border: 2px solid var(--bg-color);
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            z-index: 1;
            transition: all 0.3s ease-out;
        }

        .circle:after {
            content: "";
            width: 118px;
            height: 118px;
            display: block;
            position: absolute;
            background: var(--bg-color);
            border-radius: 50%;
            top: 7px;
            left: 7px;
            transition: opacity 0.3s ease-out;
        }

        .circle svg {
            z-index: 10000;
            transform: translateZ(0);
        }

        .overlay {
            width: 90px;
            position: absolute;
            height: 73px;
            border-radius: 50%;
            background: var(--bg-color);
            top: 70px;
            left: 50px;
            z-index: 0;
            transition: transform 0.3s ease-out;
        }

        .button {
            border: 4px solid black;
            border-radius: 25px;
            background-color: white;
            color: black;
            padding: 8px 18px;
            font-size: 16px;
            cursor: pointer;
            font-weight: bold;
        }

        .button1 {
            border-color: #DCE9FF;
        }

        .button2 {
            border-color: #fcebb2;
        }

        .button3 {
            border-color: #ffd861;
        }

        .button4 {
            border-color: #B8F9D3;
        }

        .button5 {
            border-color: #CEB2FC;
        }

        .button1:hover {
            background-color: white;
            color: black;
            font-weight: bold;
            border-color: #dce2ff;
        }

        .button2:hover {
            border-color: #fcebb2;
            color: black;
            font-weight: bold;
            background-color: white;
        }

        .button3:hover {
            border-color: #ffd861;
            color: black;
            font-weight: bold;
            background-color: white;
        }

        .button4:hover {
            border-color: #B8F9D3;
            color: black;
            font-weight: bold;
            background-color: white;
        }

        .button5:hover {
            border-color: #CEB2FC;
            color: black;
            font-weight: bold;
            background-color: white;
        }

        .container {
            padding: 0px;
            align-items: center;
            margin: 20px 90px 20px 0px;
        }
    </style>
</head>

<body>

    <!-- Example Code -->
<div class="top-right">
    <button onclick="backToHome()" style="border-radius: 10px; background-color: black; color: orange;  margin-left: 1000% "> Home</button>
        
    </div>
    <div class="container justify-content-center">
        <div class="row row-cols-5 ">
            <div class="col">
                <div class="p-5">
                    <a href="#" class="card human-resources">
                        <div class="overlay "></div>
                        <div class="circle ">


                            <svg width="66px" height="77px" viewBox="1855 26 66 77" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <!-- Generator: Sketch 42 (36781) - http://www.bohemiancoding.com/sketch -->
                                <desc>Created with Sketch.</desc>
                                <defs></defs>
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
                                    transform="translate(1855.000000, 26.000000)">
                                    <path
                                        d="M4.28872448,42.7464904 C4.28872448,39.3309774 5.4159227,33.7621426 6.40576697,30.4912557 C10.5920767,32.1098991 14.3021264,35.1207513 18.69596,35.1207513 C30.993618,35.1207513 42.5761396,28.7162991 49.9992251,17.9014817 C56.8027248,23.8881252 60.8188351,33.0463165 60.8188351,42.7464904 C60.8188351,60.817447 47.6104607,76.6693426 32.5537798,76.6693426 C17.4970989,76.6693426 4.28872448,60.817447 4.28872448,42.7464904"
                                        id="Fill-8" fill="#AFCEFF"></path>
                                    <path
                                        d="M64.3368879,31.1832696 L62.8424171,46.6027478 L60.6432609,46.7824348 L59.8340669,34.6791304 L47.6573402,25.3339478 C44.2906753,34.068487 34.3459503,40.2903304 24.4684093,40.2903304 C17.7559812,40.2903304 10.046244,37.4168 5.80469412,32.8004522 L5.80469412,34.6791304 L5.80469412,46.6027478 L4.28932167,46.6027478 L1.30187314,27.8802435 C1.30187314,20.9790957 3.52342407,15.5432 7.27229127,11.3578087 C13.132229,4.79558261 21.8124018,0.0492173913 30.5672235,0.342852174 C37.4603019,0.569286957 42.6678084,2.72991304 50.8299179,0.342852174 C51.4629405,1.44434783 51.8615656,3.00455652 51.5868577,5.22507826 C51.4629405,6.88316522 51.2106273,7.52302609 50.8299179,8.45067826 C58.685967,14.1977391 64.3368879,20.7073739 64.3368879,31.1832696"
                                        id="Fill-10" fill="#3B6CB7"></path>
                                    <path
                                        d="M58.9405197,54.5582052 C62.0742801,54.8270052 65.3603242,52.60064 65.6350321,49.5386574 C65.772386,48.009127 65.2617876,46.5570226 64.3182257,45.4584487 C63.3761567,44.3613357 62.0205329,43.6162922 60.4529062,43.4818922 L58.9405197,54.5582052 Z"
                                        id="Fill-13" fill="#568ADC"></path>
                                    <path
                                        d="M6.32350389,54.675367 C3.18227865,54.8492104 0.484467804,52.4957496 0.306803449,49.4264626 C0.217224782,47.8925496 0.775598471,46.4579757 1.75200594,45.3886191 C2.7284134,44.3192626 4.10792487,43.6165843 5.67853749,43.530393 L6.32350389,54.675367 Z"
                                        id="Fill-15" fill="#568ADC"></path>
                                </g>
                            </svg>

                        </div>
                        <p>USER<br><br>
                            <button class="button button1"
                                onclick="window.location.href='userlogin.jsp'">Login</button>
                        </p>

                    </a>
                </div>
            </div>
            <div class="col">
                <div class="p-5">
                    <a href="#" class="card wallet1">
                        <div class="overlay"></div>
                        <div class="circle">


                            <svg width="66px" height="77px" viewBox="1855 26 66 77" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <!-- Generator: Sketch 42 (36781) - http://www.bohemiancoding.com/sketch -->
                                <desc>Created with Sketch.</desc>
                                <defs></defs>
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
                                    transform="translate(1855.000000, 26.000000)">
                                    <path
                                        d="M4.28872448,42.7464904 C4.28872448,39.3309774 5.4159227,33.7621426 6.40576697,30.4912557 C10.5920767,32.1098991 14.3021264,35.1207513 18.69596,35.1207513 C30.993618,35.1207513 42.5761396,28.7162991 49.9992251,17.9014817 C56.8027248,23.8881252 60.8188351,33.0463165 60.8188351,42.7464904 C60.8188351,60.817447 47.6104607,76.6693426 32.5537798,76.6693426 C17.4970989,76.6693426 4.28872448,60.817447 4.28872448,42.7464904"
                                        id="Fill-8" fill="#AFCEFF"></path>
                                    <path
                                        d="M64.3368879,31.1832696 L62.8424171,46.6027478 L60.6432609,46.7824348 L59.8340669,34.6791304 L47.6573402,25.3339478 C44.2906753,34.068487 34.3459503,40.2903304 24.4684093,40.2903304 C17.7559812,40.2903304 10.046244,37.4168 5.80469412,32.8004522 L5.80469412,34.6791304 L5.80469412,46.6027478 L4.28932167,46.6027478 L1.30187314,27.8802435 C1.30187314,20.9790957 3.52342407,15.5432 7.27229127,11.3578087 C13.132229,4.79558261 21.8124018,0.0492173913 30.5672235,0.342852174 C37.4603019,0.569286957 42.6678084,2.72991304 50.8299179,0.342852174 C51.4629405,1.44434783 51.8615656,3.00455652 51.5868577,5.22507826 C51.4629405,6.88316522 51.2106273,7.52302609 50.8299179,8.45067826 C58.685967,14.1977391 64.3368879,20.7073739 64.3368879,31.1832696"
                                        id="Fill-10" fill="#3B6CB7"></path>
                                    <path
                                        d="M58.9405197,54.5582052 C62.0742801,54.8270052 65.3603242,52.60064 65.6350321,49.5386574 C65.772386,48.009127 65.2617876,46.5570226 64.3182257,45.4584487 C63.3761567,44.3613357 62.0205329,43.6162922 60.4529062,43.4818922 L58.9405197,54.5582052 Z"
                                        id="Fill-13" fill="#568ADC"></path>
                                    <path
                                        d="M6.32350389,54.675367 C3.18227865,54.8492104 0.484467804,52.4957496 0.306803449,49.4264626 C0.217224782,47.8925496 0.775598471,46.4579757 1.75200594,45.3886191 C2.7284134,44.3192626 4.10792487,43.6165843 5.67853749,43.530393 L6.32350389,54.675367 Z"
                                        id="Fill-15" fill="#568ADC"></path>
                                </g>
                            </svg>

                        </div>
                        <p>CLERK<br><br>
                            <button class="button button2"
                                onclick="window.location.href='clerk_login.jsp'">Login</button>
                        </p>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="p-5">
                    <a href="#" class="card education">
                        <div class="overlay"></div>
                        <div class="circle">


                            <svg width="66px" height="77px" viewBox="1855 26 66 77" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <!-- Generator: Sketch 42 (36781) - http://www.bohemiancoding.com/sketch -->
                                <desc>Created with Sketch.</desc>
                                <defs></defs>
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
                                    transform="translate(1855.000000, 26.000000)">
                                    <path
                                        d="M4.28872448,42.7464904 C4.28872448,39.3309774 5.4159227,33.7621426 6.40576697,30.4912557 C10.5920767,32.1098991 14.3021264,35.1207513 18.69596,35.1207513 C30.993618,35.1207513 42.5761396,28.7162991 49.9992251,17.9014817 C56.8027248,23.8881252 60.8188351,33.0463165 60.8188351,42.7464904 C60.8188351,60.817447 47.6104607,76.6693426 32.5537798,76.6693426 C17.4970989,76.6693426 4.28872448,60.817447 4.28872448,42.7464904"
                                        id="Fill-8" fill="#AFCEFF"></path>
                                    <path
                                        d="M64.3368879,31.1832696 L62.8424171,46.6027478 L60.6432609,46.7824348 L59.8340669,34.6791304 L47.6573402,25.3339478 C44.2906753,34.068487 34.3459503,40.2903304 24.4684093,40.2903304 C17.7559812,40.2903304 10.046244,37.4168 5.80469412,32.8004522 L5.80469412,34.6791304 L5.80469412,46.6027478 L4.28932167,46.6027478 L1.30187314,27.8802435 C1.30187314,20.9790957 3.52342407,15.5432 7.27229127,11.3578087 C13.132229,4.79558261 21.8124018,0.0492173913 30.5672235,0.342852174 C37.4603019,0.569286957 42.6678084,2.72991304 50.8299179,0.342852174 C51.4629405,1.44434783 51.8615656,3.00455652 51.5868577,5.22507826 C51.4629405,6.88316522 51.2106273,7.52302609 50.8299179,8.45067826 C58.685967,14.1977391 64.3368879,20.7073739 64.3368879,31.1832696"
                                        id="Fill-10" fill="#3B6CB7"></path>
                                    <path
                                        d="M58.9405197,54.5582052 C62.0742801,54.8270052 65.3603242,52.60064 65.6350321,49.5386574 C65.772386,48.009127 65.2617876,46.5570226 64.3182257,45.4584487 C63.3761567,44.3613357 62.0205329,43.6162922 60.4529062,43.4818922 L58.9405197,54.5582052 Z"
                                        id="Fill-13" fill="#568ADC"></path>
                                    <path
                                        d="M6.32350389,54.675367 C3.18227865,54.8492104 0.484467804,52.4957496 0.306803449,49.4264626 C0.217224782,47.8925496 0.775598471,46.4579757 1.75200594,45.3886191 C2.7284134,44.3192626 4.10792487,43.6165843 5.67853749,43.530393 L6.32350389,54.675367 Z"
                                        id="Fill-15" fill="#568ADC"></path>
                                </g>
                            </svg>

                        </div>
                        <p>SUPERVISOR<br><br>
                            <button class="button button2"
                                onclick="window.location.href='supervisor_login.jsp'">Login</button>
                        </p>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="p-5">
                    <a href="#" class="card credentialing">
                        <div class="overlay "></div>
                        <div class="circle ">


                            <svg width="66px" height="77px" viewBox="1855 26 66 77" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <!-- Generator: Sketch 42 (36781) - http://www.bohemiancoding.com/sketch -->
                                <desc>Created with Sketch.</desc>
                                <defs></defs>
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
                                    transform="translate(1855.000000, 26.000000)">
                                    <path
                                        d="M4.28872448,42.7464904 C4.28872448,39.3309774 5.4159227,33.7621426 6.40576697,30.4912557 C10.5920767,32.1098991 14.3021264,35.1207513 18.69596,35.1207513 C30.993618,35.1207513 42.5761396,28.7162991 49.9992251,17.9014817 C56.8027248,23.8881252 60.8188351,33.0463165 60.8188351,42.7464904 C60.8188351,60.817447 47.6104607,76.6693426 32.5537798,76.6693426 C17.4970989,76.6693426 4.28872448,60.817447 4.28872448,42.7464904"
                                        id="Fill-8" fill="#AFCEFF"></path>
                                    <path
                                        d="M64.3368879,31.1832696 L62.8424171,46.6027478 L60.6432609,46.7824348 L59.8340669,34.6791304 L47.6573402,25.3339478 C44.2906753,34.068487 34.3459503,40.2903304 24.4684093,40.2903304 C17.7559812,40.2903304 10.046244,37.4168 5.80469412,32.8004522 L5.80469412,34.6791304 L5.80469412,46.6027478 L4.28932167,46.6027478 L1.30187314,27.8802435 C1.30187314,20.9790957 3.52342407,15.5432 7.27229127,11.3578087 C13.132229,4.79558261 21.8124018,0.0492173913 30.5672235,0.342852174 C37.4603019,0.569286957 42.6678084,2.72991304 50.8299179,0.342852174 C51.4629405,1.44434783 51.8615656,3.00455652 51.5868577,5.22507826 C51.4629405,6.88316522 51.2106273,7.52302609 50.8299179,8.45067826 C58.685967,14.1977391 64.3368879,20.7073739 64.3368879,31.1832696"
                                        id="Fill-10" fill="#3B6CB7"></path>
                                    <path
                                        d="M58.9405197,54.5582052 C62.0742801,54.8270052 65.3603242,52.60064 65.6350321,49.5386574 C65.772386,48.009127 65.2617876,46.5570226 64.3182257,45.4584487 C63.3761567,44.3613357 62.0205329,43.6162922 60.4529062,43.4818922 L58.9405197,54.5582052 Z"
                                        id="Fill-13" fill="#568ADC"></path>
                                    <path
                                        d="M6.32350389,54.675367 C3.18227865,54.8492104 0.484467804,52.4957496 0.306803449,49.4264626 C0.217224782,47.8925496 0.775598471,46.4579757 1.75200594,45.3886191 C2.7284134,44.3192626 4.10792487,43.6165843 5.67853749,43.530393 L6.32350389,54.675367 Z"
                                        id="Fill-15" fill="#568ADC"></path>
                                </g>
                            </svg>

                        </div>
                        <p>ADMINISTRATOR<br>
                            <br>
                            <button class="button button2"
                                onclick="window.location.href='admin_login.jsp'">Login</button>
                        </p>
                    </a>
                </div>
            </div>
            <div class="col">
                <div class="p-5">
                    <a href="#" class="card wallet">
                        <div class="overlay "></div>
                        <div class="circle ">


                            <svg width="66px" height="77px" viewBox="1855 26 66 77" version="1.1"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <!-- Generator: Sketch 42 (36781) - http://www.bohemiancoding.com/sketch -->
                                <desc>Created with Sketch.</desc>
                                <defs></defs>
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"
                                    transform="translate(1855.000000, 26.000000)">
                                    <path
                                        d="M4.28872448,42.7464904 C4.28872448,39.3309774 5.4159227,33.7621426 6.40576697,30.4912557 C10.5920767,32.1098991 14.3021264,35.1207513 18.69596,35.1207513 C30.993618,35.1207513 42.5761396,28.7162991 49.9992251,17.9014817 C56.8027248,23.8881252 60.8188351,33.0463165 60.8188351,42.7464904 C60.8188351,60.817447 47.6104607,76.6693426 32.5537798,76.6693426 C17.4970989,76.6693426 4.28872448,60.817447 4.28872448,42.7464904"
                                        id="Fill-8" fill="#AFCEFF"></path>
                                    <path
                                        d="M64.3368879,31.1832696 L62.8424171,46.6027478 L60.6432609,46.7824348 L59.8340669,34.6791304 L47.6573402,25.3339478 C44.2906753,34.068487 34.3459503,40.2903304 24.4684093,40.2903304 C17.7559812,40.2903304 10.046244,37.4168 5.80469412,32.8004522 L5.80469412,34.6791304 L5.80469412,46.6027478 L4.28932167,46.6027478 L1.30187314,27.8802435 C1.30187314,20.9790957 3.52342407,15.5432 7.27229127,11.3578087 C13.132229,4.79558261 21.8124018,0.0492173913 30.5672235,0.342852174 C37.4603019,0.569286957 42.6678084,2.72991304 50.8299179,0.342852174 C51.4629405,1.44434783 51.8615656,3.00455652 51.5868577,5.22507826 C51.4629405,6.88316522 51.2106273,7.52302609 50.8299179,8.45067826 C58.685967,14.1977391 64.3368879,20.7073739 64.3368879,31.1832696"
                                        id="Fill-10" fill="#3B6CB7"></path>
                                    <path
                                        d="M58.9405197,54.5582052 C62.0742801,54.8270052 65.3603242,52.60064 65.6350321,49.5386574 C65.772386,48.009127 65.2617876,46.5570226 64.3182257,45.4584487 C63.3761567,44.3613357 62.0205329,43.6162922 60.4529062,43.4818922 L58.9405197,54.5582052 Z"
                                        id="Fill-13" fill="#568ADC"></path>
                                    <path
                                        d="M6.32350389,54.675367 C3.18227865,54.8492104 0.484467804,52.4957496 0.306803449,49.4264626 C0.217224782,47.8925496 0.775598471,46.4579757 1.75200594,45.3886191 C2.7284134,44.3192626 4.10792487,43.6165843 5.67853749,43.530393 L6.32350389,54.675367 Z"
                                        id="Fill-15" fill="#568ADC"></path>
                                </g>
                            </svg>

                        </div>
                        <p>MAYOR<br>
                            <br>
                           <button class="button button2"
                                onclick="window.location.href='mayor_login.jsp'">Login</button>
                        </p>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!-- End Example Code -->
    <script>
        function backToHome() {
            // Redirect back to the home page
            window.location.href = "index.jsp";
        }
    </script>
</body>

</html>