<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/29 0029
  Time: 下午 2:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>展示英雄信息页面--分页功能</title>
    <script src="../js/jquery/2.0.0/jquery.min.js"></script>
    <link href="../CSS/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="../js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
<img alt="" src="./image/3.jpg" />
<table class="table table-striped">
    <thead>
    <th>n1</th>
    <th>n2</th>
    <th>n3</th>
    <th>n4</th>
    </thead>
    <tbody>
    <c:forEach items="${Record}" var="s" varStatus="vs">
        <tr>
            <td>${s.spend}</td>
            <td>${s.comment}</td>
            <td>${s.month}</td>
            <td>${s.cid}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div style="text-align:center">
    <a href="?start=0">首  页</a>
    <a href="?start=${page.start-page.count}">上一页</a>
    <a href="?start=${page.start+page.count}">下一页</a>
    <a href="?start=${page.last}">末  页</a>
</div>
</body>
</html>
