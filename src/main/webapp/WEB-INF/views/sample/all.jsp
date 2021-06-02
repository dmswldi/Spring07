<%--
  Created by IntelliJ IDEA.
  User: eunjikim
  Date: 2021/06/01
  Time: 10:10 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>/sample/all page</h1>

<!-- 익명 사용자 -->
<sec:authorize access="isAnonymous()">
    <a href="/customLogin">로그인</a>
</sec:authorize>

<!-- 인증된 사용자 -->
<sec:authorize access="isAuthenticated()">
    <a href="/customLogout">로그아웃</a>
</sec:authorize>
</body>
</html>
