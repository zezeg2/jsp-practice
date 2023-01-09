<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-09
  Time: 오전 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String endpoint = "";
    if (id != null) {
        if (id.equals("admin")) {
            endpoint = "admin.jsp";

        } else {
            endpoint = "user.jsp";
        }
    } else {
        out.prinln("<h1>아이디를 입력해 주세여</h1>");
    }
%>
<jsp:forward page=""/>
</body>
</html>
