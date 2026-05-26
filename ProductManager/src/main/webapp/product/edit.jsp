<%--
  Created by IntelliJ IDEA.
  User: luudu
  Date: 5/26/2026
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sửa Sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h3 class="mb-4">Cập nhật Sản phẩm</h3>

            <form action="${pageContext.request.contextPath}/products" method="post">
                <input type="hidden" name="action" value="edit">
                <!-- ID là trường ẩn vì không được phép sửa ID -->
                <input type="hidden" name="id" value="${product.id}">

                <div class="mb-3">
                    <label class="form-label">Tên sản phẩm:</label>
                    <input type="text" class="form-control" name="name" value="${product.name}" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Giá (USD):</label>
                    <input type="number" step="0.01" class="form-control" name="price" value="${product.price}"
                           required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Nhà sản xuất:</label>
                    <input type="text" class="form-control" name="manufacture" value="${product.manufacturer}"
                           required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Mô tả:</label>
                    <textarea class="form-control" name="description" rows="3">${product.description}</textarea>
                </div>

                <button type="submit" class="btn btn-warning">Cập nhật</button>
                <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Quay lại</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>
