<%--
  Created by IntelliJ IDEA.
  User: luudu
  Date: 5/26/2026
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <
    <meta charset="UTF-8">
    <title>Thêm Sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h3 class="mb-4">Thêm Sản phẩm Mới</h3>

            <form action="${pageContext.request.contextPath}/products" method="post">
                <input type="hidden" name="action" value="create">

                <div class="mb-3">
                    <label class="form-label">Tên sản phẩm:</label>
                    <input type="text" class="form-control" name="name" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Giá (USD):</label>
                    <input type="number" step="0.01" class="form-control" name="price" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Nhà sản xuất:</label>
                    <input type="text" class="form-control" name="manufacture" required>
                </div>
                <div class="mb-3">
                    <label class="form-label">Mô tả:</label>
                    <textarea class="form-control" name="description" rows="3"></textarea>
                </div>

                <button type="submit" class="btn btn-primary">Lưu sản phẩm</button>
                <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Quay lại</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>
