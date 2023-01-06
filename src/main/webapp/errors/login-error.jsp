<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1><%=exception.getMessage()%></h1>
<a href="<%=request.getContextPath()%>/member/forms/login.jsp">다시 로그인</a>
</body>
</html>
