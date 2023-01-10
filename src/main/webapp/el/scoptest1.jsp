<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%
    //jsp태그 값 정의 -- el 출력
    String b = "jsp만의변수";
    pageContext.setAttribute("a", "pageContext공유");
    request.setAttribute("a", "request공유");
    session.setAttribute("a", "session공유");
    application.setAttribute("a", "application공유");
%>
jsp b출력 = <%=b %><br>
jsp a출력(pageContext) = <%=pageContext.getAttribute("a") %><br>
jsp a출력(request) = <%=request.getAttribute("a") %><br>
jsp a출력(session) = <%=session.getAttribute("a") %><br>
jsp a출력(application) = <%=application.getAttribute("a") %><br>

el b출력 = ${b }<br><!-- 공백 -->
el a출력 = ${a }<br>
el a출력 = ${a }<br>
el a출력 = ${a }<br>
el a출력 = ${a }<br>
<%=request.getContextPath() %>
<a href="${pageContext.request.contextPath }/jsptest/el/scoptest2.jsp">링크이동</a>
<%-- <jsp:forward page="/el/scoptest2.jsp"/>
 --%>
</body>
</html>





