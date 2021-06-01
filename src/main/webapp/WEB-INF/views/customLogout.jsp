<%--
  Created by IntelliJ IDEA.
  User: eunjikim
  Date: 2021/06/01
  Time: 1:44 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Logout Page</h1>

    <form action="/customLogout" method="post">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
        <button>로그아웃</button>
    </form>
</body>
</html>
