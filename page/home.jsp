<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2020/2/24
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>登陆成功</h1>
<a href="${pageContext.request.contextPath}/admin">检测ROLE_ADMIN角色</a>
<a href="${pageContext.request.contextPath}/user/r">检测ROLE_USER角色</a>
<button onclick="window.location.href='${pageContext.request.contextPath}/logout'">退出登录</button>
</body>
</html>
