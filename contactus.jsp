<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Farmer Bazar</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background-color: #28a745;
            color: white;
            padding: 15px 20px;
            text-align: center;
        }
        nav {
            display: flex;
            justify-content: center;
            background-color: #333;
        }
        nav a {
            color: white;
            text-decoration: none;
            padding: 15px 20px;
            display: block;
        }
        nav a:hover {
            background-color: #575757;
        }
        .container {
            max-width: 800px;
            margin: 30px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .container h2 {
            text-align: center;
            color: #28a745;
        }
        .contact-info {
            margin-bottom: 30px;
        }
        .contact-info p {
            font-size: 16px;
            line-height: 1.5;
        }
        .contact-form {
            margin-top: 30px;
        }
        .contact-form form {
            display: flex;
            flex-direction: column;
        }
        .contact-form label {
            margin-bottom: 5px;
            font-weight: bold;
        }
        .contact-form input, .contact-form textarea {
            margin-bottom: 15px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }
        .contact-form button {
            padding: 10px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .contact-form button:hover {
            background-color: #218838;
        }
        footer {
            text-align: center;
            padding: 15px 20px;
            background-color: #333;
            color: white;
        }
        .map {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<header>
    <h1>Contact Us - Farmer Bazar</h1>
    <p>We would love to hear from you!</p>
</header>

<nav>
    <a href="home.jsp">Home</a>
    <a href="about.jsp">About Us</a>
    <a href="products.jsp">Products</a>
    <a href="contactus.jsp">Contact</a>
    <a href="login.html">Login</a>
</nav>

<div class="container">
    <h2>Contact Information</h2>
    <div class="contact-info">
        <p><strong>Name:</strong> Prathmesh Kulkarni</p>
        <p><strong>Email:</strong> prathmeshkulkarni6252@gmail.com</p>
        <p><strong>Address:</strong> Kothrud, Pune 411038</p>
    </div>

    <div class="contact-form">
        <h3>Send Us a Message</h3>
        <form action="sendMessage.jsp" method="post">
            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>

            <label for="message">Your Message:</label>
            <textarea id="message" name="message" rows="5" placeholder="Write your message here..." required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </div>

    <div class="map">
        <h3>Our Location</h3>
        <iframe src="https://www.google.com/maps/embed/v1/place?key=YOUR_GOOGLE_MAPS_API_KEY&q=Kothrud,Pune" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
</div>

<footer>
    <p>&copy; 2024 Farmer Bazar. All rights reserved.</p>
</footer>

</body>
</html>
