<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<h1>Product Discount Calculator</h1>
<form action="${pageContext.request.contextPath}/discount" method="post">
    <label for="description">Product Description:</label><br>
    <input type="text" id="description" name="description"><br>
    <label for="price">List Price:</label><br>
    <input type="text" id="price" name="price"><br>
    <label for="discount_percent">Discount Percent:</label><br>
    <input type="text" id="discount_percent" name="discount_percent"><br><br>
    <input type="submit" value="Calculate Discount">
</form>
</body>
</html>