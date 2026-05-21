<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<h2>Vietnamese Dictionary</h2>
<form action="${pageContext.request.contextPath}/translate" method="post">
    <input type="text" name="txtSearch" placeholder="Enter your word: "/>
    <input type="submit" id="submit" value="Search"/>
</form>
</body>
</html>