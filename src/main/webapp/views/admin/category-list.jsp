<%--
  Created by IntelliJ IDEA.
  User: nhoclahola
  Date: 9/30/2024
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Categories</title>
</head>

<body>
<a href="${pageContext.request.contextPath}/admin/category/add">Thêm</a>
<table border="1">
    <tr>
        <th style="text-align: center;">ID</th>
        <th style="text-align: center;">Image</th>
        <th style="text-align: center;">Category name</th>
        <th style="text-align: center;">Status</th>
        <th style="text-align: center;">Action</th>
    </tr>
    <c:forEach items="${categoryList}" var="cate" varStatus="STT">
        <tr class="odd gradeX">
            <td width="50" style="text-align: center;">${STT.index+1 }</td>
            <c:set var="imgUrl" value="${cate.image}"/>
            <c:if test="${cate.image.length() >= 5 && !cate.image.substring(0, 5).equals('https')}">
                <c:url value="/image?filename=${cate.image}" var="imgUrl"></c:url>
            </c:if>
            <td style="text-align: center;"><img height="150" width="200" src="${imgUrl}"/></td>
            <td style="text-align: center;">${cate.categoryName }</td>
            <td style="text-align: center;">
                <!-- Hiển thị trạng thái dựa trên giá trị status -->
                <c:choose>
                    <c:when test="${cate.status == 1}">
                        Hoạt động
                    </c:when>
                    <c:otherwise>
                        Khoá
                    </c:otherwise>
                </c:choose>
            </td>
            <td style="text-align: center;" width="200">
                <a href="<c:url value='/admin/category/edit?id=${cate.categoryId }'/>" class="center">Sửa</a>
                <a href="<c:url value='/admin/category/delete?id=${cate.categoryId }'/>" class="center">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
