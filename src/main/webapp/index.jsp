<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    void printOnConsole(Object obj) {
        System.out.println(obj);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    Date now = new Date();
%>
<h1><%=id%> 회원님 <%=now%>시각에 로그인 하셨습니다.</h1>
</body>
</html>
