<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: luudu
  Date: 5/26/2026
  Time: 9:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách Sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="mb-4">Quản lý Sản phẩm</h2>

    <!-- Thanh công cụ: Nút thêm mới và Form tìm kiếm -->
    <div class="d-flex justify-content-between mb-3">
        <a href="${pageContext.request.contextPath}/products?action=create" class="btn btn-success">Thêm sản phẩm
            mới</a>

        <form action="${pageContext.request.contextPath}/products" method="get" class="d-flex">
            <input type="hidden" name="action" value="search">
            <input type="text" name="keyword" class="form-control me-2" placeholder="Nhập tên sản phẩm..."
                   value="${keyword}">
            <button type="submit" class="btn btn-primary">Tìm kiếm</button>
        </form>
    </div>

    <!-- Bảng hiển thị danh sách -->
    <table class="table table-bordered table-hover">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Nhà sản xuất</th>
            <th class="text-center">Hành động</th>
        </tr>
        </thead>
        <tbody>
        <jsp:useBean id="products" scope="request" type="java.util.List"/>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/products?action=view&id=${product.id}">${product.name}</a>
                </td>
                <td>${product.price} $</td>
                <td>${product.manufacturer}</td>
                <td class="text-center">
                    <a href="${pageContext.request.contextPath}/products?action=edit&id=${product.id}"
                       class="btn btn-warning btn-sm">Sửa</a>
                    <a href="${pageContext.request.contextPath}/products?action=delete&id=${product.id}"
                       class="btn btn-danger btn-sm">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        <!-- Nếu danh sách trống -->
        <c:if test="${empty products}">
            <tr>
                <td colspan="5" class="text-center text-muted">Không tìm thấy sản phẩm nào!</td>
            </tr>
        </c:if>
        </tbody>
    </table>
</div>
</body>
</html>
