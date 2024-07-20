<%-- 
    Document   : aboutus
    Created on : 09-Jan-2024, 12:20:02 pm
    Author     : 91939
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About RRTS</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;

            background-image: url('R.jpg');
            background-size: 100% auto;

            /* Orange background */
            color: #333;
            /* Dark text color */
            transition: background-color 0.5s;
        }


        .container {
            max-width: 1000px;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(1, 1, 1, 1);
            margin-top: 20px;
            position: relative;
            text-align: justify;
            color: #333;
            /* Dark text color */
            transition: box-shadow 0.3s, transform 0.3s;
        }

        .container:hover {
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
            transform: scale(1.02);
        }

        h1,
        h2 {
            color: #333;
            text-align: center;
            font-family: Georgia, 'Times New Roman', Times, serif;
        }

        p {
            text-align: justify;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            font-size: large;
        }

        ol {
            padding-left: 20px;
            font-size: larger;
        }

        .mission-section,
        .offer-section,
        .how-it-works-section,
        .join-us-section {
            margin-top: 40px;
        }

        .offer-section li,
        .how-it-works-section li {
            position: relative;
            margin-bottom: 15px;
            padding-left: 30px;
            line-height: 1.6;
        }

        .offer-section li::before,
        .how-it-works-section li::before {
            content: "\2022";
            position: absolute;
            left: 0;
            color: #3498db;
        }

        .join-us-section {
            text-align: center;
            margin-bottom: 40px;
        }

        .join-us-btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .join-us-btn:hover {
            background-color: #2980b9;
        }

        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }

        .popup-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            color: #333;
            /* Dark text color */
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
        }

        img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            margin-top: 20px;
        }

        /* Spin animation */
        @keyframes spin {
            0% {
                transform: rotate(0deg);
            }

            100% {
                transform: rotate(360deg);
            }
        }

        .spinner {
            animation: spin 1s infinite linear;
            font-size: 24px;
            display: inline-block;
            margin-top: 10px;
        }
    </style>
</head>

<body>
    <header>
        <h1>About RRTS - Rapid Road Repair System</h1>
    </header>

    <div class=" container mission-section">
        <h2>Our Mission</h2>
        <p>At RRTS, our mission is to revolutionize road repair management by leveraging advanced technologies and
            streamlined processes. We are committed to ensuring the safety and convenience of our residents by
            promptly addressing road repair needs with precision and innovation.</p>
    </div>

    <div class="container offer-section">
        <h2>What We Offer</h2>
        <ol>
            <li><strong>Swift Repair Solutions:</strong> RRTS employs state-of-the-art technology to facilitate the
                rapid identification and resolution of road repair issues. By embracing a proactive approach, we aim to
                minimize inconvenience and enhance the overall quality of our city's road infrastructure.</li>
            <li><strong>Prioritization for Maximum Impact:</strong> Our system intelligently prioritizes road repair
                tasks based on the severity of the condition and the type of locality. This ensures that critical
                repairs are addressed promptly, leading to safer and smoother roads for everyone.</li>
            <li><strong>Dynamic Resource Management:</strong> Efficient repair scheduling requires optimal resource
                utilization. RRTS allows our supervisors to dynamically assess and allocate resources, taking into
                account available manpower, machines, and raw materials. This flexibility ensures that repairs are
                carried out swiftly without compromising on quality.</li>
        </ol>
    </div>

    <div class="container how-it-works-section">
        <h2>How RRTS Works</h2>
        <ol>
            <li><strong>Complaint Registration:</strong> Residents can easily report road repair issues via phone
                or written complaints, which are promptly recorded in our system by dedicated clerks.</li>
            <li><strong>Supervisor Assessment:</strong> Assigned supervisors receive daily area-wise lists of fresh
                complaints. They assess road conditions, determine severity, and prioritize repairs based on their
                expertise.</li>
            <li><strong>Resource Estimation:</strong> Supervisors estimate the raw material requirements, types, and
                numbers of machines, and personnel needed for each repair project.</li>
            <li><strong>Automated Scheduling:</strong> The RRTS computer system schedules repairs based on priority,
                road conditions, and the availability of resources. This schedule is then utilized by supervisors to
                direct repair work efficiently.</li>
            <li><strong>Administrator Control:</strong> City corporation administrators manage and update the
                availability of manpower and machines, ensuring that the system always operates with the latest
                information.</li>
        </ol>
    </div>

    <div class="container join-us-section">
        <h2>Join Us in Building a Better City</h2>
        <p>We invite you to be part of this transformative journey. RRTS is not just a system; it's a commitment to
            creating safer, well-maintained roads for the prosperity and well-being of our community.</p>
        <a href="#" class="join-us-btn" onclick="openPopup()">Join Now <span class="spinner">&#8634;</span></a>
    </div>

    <!-- Popup -->
    <div class="popup" id="joinPopup">
        <div class="popup-content">
            <span class="close-btn" onclick="closePopup()">&times;</span>
            <h2>Join RRTS Community</h2>
            <p>Enter your email to stay updated with our latest initiatives and events:</p>
            <form>
                <input type="email" placeholder="Your Email" required>
                <button type="submit">Subscribe</button>
            </form>
        </div>
    </div>

    <script>
        function openPopup() {
            document.getElementById("joinPopup").style.display = "flex";
        }

        function closePopup() {
            document.getElementById("joinPopup").style.display = "none";
        }
    </script>
</body>

</html>