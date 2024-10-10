<%--
  Created by IntelliJ IDEA.
  User: nhoclahola
  Date: 9/30/2024
  Time: 2:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Category</title>
</head>
<body>
<form role="form" action="${pageContext.request.contextPath}/admin/category/insert" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label>Tên danh mục:</label>
        <input class="form-control"
               placeholder="Please enter category name" name="categoryName"/>
    </div>
    <div class="form-group">
        <input type="radio" id="active" name="status" value="1">
        <label for="active">Hoạt động</label><br>
        <input type="radio" id="lock" name="status" value="0">
        <label for="lock">Khoá</label>
    </div>
    <div>
        <label for="image-link">Đường dẫn ảnh</label>
        <input type="text" name="imageLink" id="image-link">
    </div>
    <div class="form-group">
        <label>Ảnh đại diện</label>
        <input type="file" name="image"/>
    </div>
    <button type="submit" class="btn btn-default">Thêm
    </button>
    <button type="reset" class="btn btn-primary">Hủy
    </button>
</form>
</body>
</html>
