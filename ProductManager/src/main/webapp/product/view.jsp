<%--
  Created by IntelliJ IDEA.
  User: luudu
  Date: 5/26/2026
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết Sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Chi tiết Sản phẩm: ${product.name}</h4>
                </div>
                <div class="card-body">
                    <dl class="row mb-0">
                        <dt class="col-sm-3">Mã sản phẩm (ID)</dt>
                        <dd class="col-sm-9">${product.id}</dd>

                        <dt class="col-sm-3">Tên sản phẩm</dt>
                        <dd class="col-sm-9 fw-bold">${product.name}</dd>

                        <dt class="col-sm-3">Giá bán</dt>
                        <dd class="col-sm-9 text-success">${product.price} $</dd>

                        <dt class="col-sm-3">Nhà sản xuất</dt>
                        <dd class="col-sm-9">${product.manufacturer}</dd>

                        <dt class="col-sm-3">Mô tả</dt>
                        <dd class="col-sm-9">${product.description}</dd>
                    </dl>
                </div>
                <div class="card-footer bg-light text-end">
                    <a href="${pageContext.request.contextPath}/products?action=edit&id=${product.id}" class="btn btn-warning">Sửa thông tin</a>
                    <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Quay lại danh sách</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
