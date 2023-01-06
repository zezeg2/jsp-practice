<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%session.removeAttribute("info");%>
<jsp:forward page="../forms/login.jsp"/>
</body>
</html>
