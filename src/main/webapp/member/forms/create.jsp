<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-09
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="<%=request.getContextPath()%>/member/views/insert-result.jsp" method="post">
    <span>
        <label for="id">아이디 입력</label>
        <input type="text" id="id" name="id">
    </span>
    <span>
        <label for="pw">패스워드 입력</label>
        <input type="password" id="pw" name="pw">
    </span>
    <span>
        <label for="name">이름 입력</label>
        <input type="text" id="name" name="name">
    </span>
    <span>
        <label for="email">이메일 입력</label>
        <input type="text" id="email" name="email">
    </span>
    <span>
        <label for="phone">휴대전화 입력</label>
        <input type="text" id="phone" name="phone">
    </span>
    <span>
        <label for="address">주소 입력</label>
        <input type="text" id="address" name="address">
    </span>
    <input type="hidden" name="indate">
    <input type="submit">
</form>
</body>
</html>
