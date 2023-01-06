<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Req1</title>
</head>
<body>
<% if (session.getAttribute("info") != null) {%>
<jsp:forward page="../views/info.jsp"/>
<%}%>
<form action="../views/info.jsp" method="post">
    <div>
        <label for="id">아이디</label>
        <input type="text" id="id" name="id" required>
    </div>
    <div>
        <label for="pw">비번</label>
        <input type="password" id="pw" name="pw" required>
    </div>
    <input type="submit">
</form>


</body>
</html>
