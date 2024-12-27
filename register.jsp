<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background: #f4f7fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        h1 {
            text-align: center;
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 30px;
        }

        /* Form Styles */
        .register-form {
            background: white;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        .register-form input,
        .register-form select,
        .register-form button {
            width: 100%;
            padding: 15px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 1rem;
        }
        .register-form input[type="text"]:focus,
        .register-form input[type="email"]:focus,
        .register-form input[type="password"]:focus,
        .register-form select:focus {
            outline: none;
            border-color: #6c5ce7;
        }

        .register-form button {
            background: #6c5ce7;
            color: white;
            font-weight: bold;
            cursor: pointer;
            border: none;
            transition: background 0.3s ease;
        }

        .register-form button:hover {
            background: #a29bfe;
        }

        /* Label Styling */
        .register-form label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
        }

        /* Tooltip for role selection */
        .role-tooltip {
            position: relative;
        }
        .role-tooltip:hover::after {
            content: "Choose your role: Farmer or Consumer";
            position: absolute;
            top: -30px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #333;
            color: #fff;
            padding: 5px;
            font-size: 0.9rem;
            border-radius: 5px;
            visibility: visible;
            opacity: 1;
            transition: opacity 0.3s ease;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 480px) {
            h1 {
                font-size: 2rem;
            }

            .register-form {
                width: 100%;
                padding: 20px;
            }

            .register-form button {
                padding: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="register-form">
        <h1>Register</h1>
        <form action="register" method="post">
            <div>
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div>
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <div class="role-tooltip">
                <label for="role">Role</label>
                <select name="role" id="role">
                    <option value="farmer">Farmer</option>
                    <option value="consumer">Consumer</option>
                </select>
            </div>
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
