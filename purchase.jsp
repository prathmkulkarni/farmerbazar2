<!DOCTYPE html>
<html>
<head>
    <title>Purchase</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h1>Purchase Product</h1>
    <form action="purchase" method="post">
        <input type="number" name="productId" placeholder="Product ID" required><br>
        <input type="number" name="quantity" placeholder="Quantity" required><br>
        <button type="submit">Purchase</button>
    </form>
</body>
</html>