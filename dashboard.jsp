<!DOCTYPE html>
<html>
<head>
    <title>Farmer Bazar - Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f5f5f5, #c9e2b3); /* Gradient background */
            overflow-x: hidden; /* Prevent horizontal overflow */
        }

        /* Header Section */
        .header {
            background-color: rgba(255, 255, 255, 0.8); /* Slight transparency */
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header img {
            height: 50px;
        }

        .header .links {
            display: flex;
            gap: 15px;
        }

        .header a {
            text-decoration: none;
            color: #333;
            font-weight: bold;
            padding: 5px 10px;
        }

        .header a:hover {
            color: #4CAF50;
        }

        /* Dashboard Container */
        .dashboard-container {
            text-align: center;
            padding: 50px 20px;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
            margin: 20px auto;
            border-radius: 10px;
            max-width: 800px;
        }

        .dashboard-container h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .dashboard-container a {
            display: inline-block;
            text-decoration: none;
            color: #fff;
            background-color: #4CAF50;
            padding: 10px 20px;
            margin: 10px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }

        .dashboard-container a:hover {
            background-color: #45a049;
        }

        /* Footer */
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: #fff;
        }

        /* Custom Background Effect */
        .background-effect {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url('https://th.bing.com/th?id=OIP.wUvF6k-NzGMZqErSXs0z9QHaGl&w=265&h=235&c=8&rs=1&qlt=90&o=6&dpr=1.1&pid=3.1&rm=2') no-repeat center center fixed;
            background-size: cover;
            filter: blur(10px);
            z-index: -1;
        }
    </style>
</head>
<body>

    <!-- Background Effect (Blurred Image) -->
    <div class="background-effect"></div>

    <!-- Header -->
    <div class="header">
        <img src="https://th.bing.com/th/id/OIP.uG20aq5IJlRwt4wPdoXw6AAAAA?w=299&h=196&c=7&r=0&o=5&dpr=1.1&pid=1.7" alt="Logo">
        <div class="links">
            <a href="dashboard.jsp">Home</a>
            <a href="contactus.jsp">About</a>
            <a href="contactus.jsp">Contact</a>
        </div>
    </div>

    <!-- Dashboard Container -->
    <div class="dashboard-container">
        <h1>Welcome to Farmer Bazar</h1>
        <p>Manage your marketplace with ease.</p>
        <a href="postProduct.jsp">Add Products</a>
        <a href="viewProducts">View Products</a>
        <a href="purchase.jsp">Purchase Products</a>
        <a href="#">LogOut</a>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Farmer Bazar. All Rights Reserved.</p>
    </div>

</body>
</html>
