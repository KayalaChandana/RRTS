<%-- 
    Document   : pagestruct
    Created on : 16-Dec-2023, 6:50:55 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>

<head>
    <link rel="stylesheet" href="project.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
</head>

<body class="main-body container-fluid ">

    <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #778899;">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="medical-cross-inside-in-the-heart-symbol-red-medical-sign-isolated-on-white-background-vector-illustration-abstract-medical-symbol-2AP335R.jpg"
                    width="50" height="50" class="d-inline-block rounded-pill align-top" alt="" loading="lazy">
                <span class="font">GH</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarNav">
                <div class="navbar-nav ml-auto">

                    <a class="nav-link active" href="#">
                        <h5>Home</h5>
                    </a>


                    <a class="nav-link" href="#descrip">
                        <h5>Description</h5>
                    </a>

                    <a class="nav-link" href="#categories1">
                        <h5>categories</h5>
                    </a>

                    <a class="nav-link" href="#require">Requirements</a>

                </div>
            </div>
        </div>
    </nav>

    <div class="mt-5 mb-5 cc" id="home">

        <div id="carouselExampleControls" class="carousel slide" data-interval="5000" data-ride="carousel">
            <div class="carousel-inner">

                <div class="carousel-item active ">
                    <img src="medicine.jpg" class="" width="1100px" height="500px" alt="...">
                </div>

                <div class="carousel-item itmsz">
                    <img src="surgery.jpg" class="" height="500px" alt="...">
                </div>


            </div>


        </div>


    </div>

    <div class="des m-5 bg-light d-flex align-items-center" id="discription">
        <div>
            <h1 id="descrip"><b>Evening OPs at major govt. hospitals from Monday </b></h1>
            <p>Evening Out-Patient (OP) clinics at major Telangana government hospitals would start functioning from
                Monday.<br /> Timings of the evening OPs are <u>4 p.m. to 6 p.</u> on all working days. A few government
                doctors have raised questions about
                the move such as the rules based on which the work timings are changed or extended.</p>
            Director of Medical Education K. Ramesh Reddy said that no one will be asked to work overtime. The usual
            work timings for the doctors is <u>9 a.m. to 4 p.m.</u> Rather than working from morning, doctors who will
            be allotted duty in the Evening.<br />
            <p id="require">(Aadhar card,patient name,father name,phone number,age,op category)</p>
            <br />
            </p>

        </div>


        <img src="opd.jpg" class="img_deg ">

    </div>



    <div class="shadow p-4 categories " id="categories1">
        <div class="container">
            <div class="row">

                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem;">
                        <img src="orthopedic.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Orthopedic</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="ortho.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>
                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="skin jstd.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Skin STD</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="skinstd.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>
                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="pediatric.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Pediatric</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="pediatry.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>


                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="surgery2.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Surgery</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="surgicals.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>
                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="a-closeup-of-a-female-eye.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Eye</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="opthamologies.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>
                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="ent.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Ent</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="ents.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>


                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="medicine-.1.1810106.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Medicine</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="medicines.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>
                <div class="col-4 mb-5">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="Psychiatry.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Psychiatry</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="psychiatrys.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>
                <div class="col-4 ">
                    <div class="card shadow" style="width: 18rem; height:20rem;">
                        <img src="dental.jpg" class="card-img-top img" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Dental</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk
                                of the card's content.</p>
                            <a href="dentals.html" class="btn btn-primary">Click</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>

        <div class="container d-flex flex-row justify-content-center">
            <div class="footer-content">
                <h3>contact us</h3>
                <p>Email:information@gmail.com</p>
                <p>phone:+123 5674 754849</p>
                <p>Address:rgukt rk valley</p>
                <p>post</p>
            </div>
            <div class="footer-content">
                <h3>Quick links</h3>
                <ul class="lists">
                    <li><i class="fas fa-home"></i><a href="#"> Home</a></li>
                    <li><i class="fas fa-cogs"></i><a href="#"> Service</a></li>
                    <li><i class="fas fa-shopping-cart"></i><a href="#"> Products</a></li>
                    <li><i class="fas fa-envelope"></i><a href="#"> Contact</a></li>
                    <li><i class="fas fa-info-circle"></i><a href="#"> About</a></li>
                </ul>
            </div>
            <div class="icons ml-5 text-center">
                <a href="#"><i class="fab fa-facebook-f mr-3"></i></a>
                <a href="#"><i class="fab fa-twitter mr-3"></i></a>
                <a href="#"><i class="fab fa-instagram mr-3"></i></a>
                <a href="#"><i class="fab fa-linkedin-in mr-3"></i></a>
                <a href="#"><i class="fab fa-youtube mr-3"></i></a>
            </div>

        </div>
        <p class="text-center mt-4 text-success">&copy; 2023 your company.All rights are reserved.</p>

    </footer>



</body>

</html>