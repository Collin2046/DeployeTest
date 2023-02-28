<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--
  Created by IntelliJ IDEA.
  User: hekelin
  Date: 2/11/23
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>ISBN</th>
        <th>Name</th>
        <th>Author</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${books}" var="book">
        <tr>
            <td>${book.name}</td>
            <td>${book.isbn}</td>
            <td>${book.author}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
