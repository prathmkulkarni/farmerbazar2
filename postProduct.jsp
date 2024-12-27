<!-- WebContent/postProduct.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Post Product</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
    <h1>Post Product</h1>
    <form action="postProduct" method="post">
        <input type="text" name="name" placeholder="Product Name" required><br>
        <input type="number" name="price" placeholder="Price" step="0.01" required><br>
        <input type="number" name="quantity" placeholder="Quantity" required><br>
        <button type="submit">Post</button>
    </form>
</body>
</html>