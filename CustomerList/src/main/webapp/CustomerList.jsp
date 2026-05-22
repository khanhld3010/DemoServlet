<%--
  Created by IntelliJ IDEA.
  User: luudu
  Date: 5/22/2026
  Time: 4:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:useBean id="customerList" scope="request" type="java.util.List"/>
<html>
<head>
    <title>Customer List</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2>Danh sách khách hàng</h2>
<table>
    <thead>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customerList" items="${customerList}">
        <tr>
            <td>${customerList.name}</td>
            <td>${customerList.DOB}</td>
            <td>${customerList.address}</td>
            <td>
                <img src="${customerList.picture}" alt="Ảnh của ${customerList.name}" width="80" height="80"
                     style="object-fit: cover; border-radius: 5px;">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
