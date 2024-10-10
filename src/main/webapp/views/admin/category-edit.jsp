<%--
  Created by IntelliJ IDEA.
  User: nhoclahola
  Date: 9/30/2024
  Time: 2:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>Cập nhật Category</title>
</head>
<body>
<form role="form" action="${pageContext.request.contextPath}/admin/category/edit" method="post" enctype="multipart/form-data">
    <input type="text" name="categoryId" hidden="hidden" value="${category.categoryId}">
    <div class="form-group">
        <label>Tên danh mục:</label>
        <input class="form-control"
               placeholder="Please enter category name" name="categoryName" value="${category.categoryName}"/>
    </div>
    <div class="form-group">
        <input type="radio" id="active" name="status" value="1" ${category.status == 1 ? 'checked="checked"' : ''} />
        <label for="active">Hoạt động</label><br>
        <input type="radio" id="lock" name="status" value="0" ${category.status == 0 ? 'checked="checked"' : ''} />
        <label for="lock">Khoá</label>
    </div>
    <div class="form-group">
        <label>Ảnh đại diện</label>
        <c:if test="${category.image.length() >= 5 && !category.image.substring(0, 5).equals('https')}">
            <c:url value="/image?filename=${category.image}" var="imgUrl"></c:url>
        </c:if>
        <img height="150" width="200" src="${imgUrl}"/>
    </div>
    <div>
        <label for="image-link">Đường dẫn ảnh</label>
        <input type="text" name="imageLink" id="image-link">
    </div>
    <div class="form-group">
        <label>Ảnh đại diện</label>
        <input type="file" name="image"/>
    </div>
    <button type="submit" class="btn btn-default">Sửa
    </button>
    <button type="reset" class="btn btn-primary">Hủy
    </button>
</form>
</body>
</html>
