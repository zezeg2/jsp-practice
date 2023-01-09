<%@ page import="domain.members.dtos.InfoMemberDTO" %>
<%@ page import="domain.members.dtos.AuthorizeMemberDTO" %>
<%@ page import="domain.members.dao.MemberDAO" %>
<%@ page import="domain.members.exceptions.InvalidParameterException" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-06
  Time: 오후 3:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="/errors/login-error.jsp" %>
<%! private final MemberDAO dao = MemberDAO.getInstance();%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    InfoMemberDTO sessionInfo = (InfoMemberDTO) session.getAttribute("info");
    if (sessionInfo == null) {
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        if (id == null || pw == null) throw new InvalidParameterException();
        AuthorizeMemberDTO auth = new AuthorizeMemberDTO(id, pw);
        InfoMemberDTO info = dao.getMemberInfo(auth);
        session.setAttribute("info", info);
        sessionInfo = info;
    }
%>
<h2><%=sessionInfo.id()%>
</h2>
<h2><%=sessionInfo.name()%>
</h2>
<h2><%=sessionInfo.email()%>
</h2>
<h2><%=sessionInfo.address()%>
</h2>
<h2><%=sessionInfo.indate()%>
</h2>
<a href="<%=request.getContextPath()%>/member/views/logout.jsp">로그아웃</a>
<% if (sessionInfo.id().equals("admin")) {%>
<a href="<%=request.getContextPath()%>/member/views/member-list.jsp?page=1">전체 회원정보조회</a>
<%}%>
</body>
</html>
