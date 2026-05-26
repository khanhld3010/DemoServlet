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
    <title>Xóa Sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="alert alert-danger">
                <h4>Bạn có chắc chắn muốn xóa sản phẩm này không?</h4>
                <p>Hành động này không thể hoàn tác!</p>
            </div>

            <table class="table table-borderless">
                <tr>
                    <th>Tên sản phẩm:</th>
                    <td>${product.name}</td>
                </tr>
                <tr>
                    <th>Giá:</th>
                    <td>${product.price} $</td>
                </tr>
                <tr>
                    <th>Nhà sản xuất:</th>
                    <td>${product.manufacturer}</td>
                </tr>
            </table>

            <form action="${pageContext.request.contextPath}/products" method="post" class="mt-3">
                <input type="hidden" name="action" value="delete">
                <input type="hidden" name="id" value="${product.id}">

                <button type="submit" class="btn btn-danger">Xác nhận Xóa</button>
                <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Hủy bỏ</a>
            </form>
        </div>
    </div>
</div>
</body>
</html>
