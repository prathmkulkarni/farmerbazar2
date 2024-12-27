
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Products</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        /* Add any necessary styles here */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .buy-link {
            color: green;
            text-decoration: none;
        }

        .buy-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div class="container">
        <header>
            <h1>Available Products</h1>
        </header>

        <section class="product-table">
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- JSTL Loop to Display Products -->
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td>${product.name}</td>
                            <td>${product.price}</td>
                            <td>${product.quantity}</td>
                            <td>
                                <a class="buy-link" href="purchase?productId=${product.id}">Buy</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </section>

        <footer class="footer">
            <p>&copy; 2024 Farmer's Market. All Rights Reserved.</p>
        </footer>

    </div>

</body>
</html>
