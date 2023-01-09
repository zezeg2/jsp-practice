<%@ page import="domain.members.dao.MemberDAO" %>
<%@ page import="domain.members.dtos.AuthorizeMemberDTO" %>
<%@ page import="domain.members.dtos.InfoMemberDTO" %>
<%@ page import="domain.members.dtos.MemberDTO" %>
<%@ page import="java.sql.SQLException" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-09
  Time: 오후 3:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="/errors/login-error.jsp" %>
<jsp:useBean id="dto" class="domain.members.dtos.MemberDTOClass" scope="request"/>
<jsp:setProperty name="dto" property="*"/>
<jsp:useBean id="dao" class="domain.members.dao.MemberDAO" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    dao = MemberDAO.getInstance();
    try {
        dao.createMember(dto);
        InfoMemberDTO info = dao.getMemberInfo(new AuthorizeMemberDTO(dto.getId(), dto.getPw()));
        session.setAttribute("info", info);
    } catch (SQLException e) {
        throw new RuntimeException("회원가입 실패");
    }

%>

</body>
</html>
