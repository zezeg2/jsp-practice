<%@ page import="domain.members.dao.MemberDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="domain.members.dtos.InfoMemberDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! MemberDAO dao = MemberDAO.getInstance();%>
<%--<%! List<InfoMemberDTO> list;%>--%>
<jsp:useBean id="memberList" class="java.util.ArrayList" scope="request"/>
<html>
<head>
    <title>Admin | MemberList</title>
</head>
<body>
<%
    try {
        memberList = new ArrayList(dao.getAllMemberInfo(request.getParameter("page") == null ? (int) request.getAttribute("page"): Integer.parseInt(request.getParameter("page"))));
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
%>
<%for (int i = 0; i < memberList.size(); i++) {%>
<h3><%=memberList.get(i).toString()%>
</h3>
<%}%>
<% for (int i = 1; i <= dao.countPage(); i++) { %>
<a href="?menu=memberList&page=<%=i%>"><%=i%> |</a>
<%}%>
<a href="<%=request.getContextPath()%>/member/views/info.jsp">뒤로가기</a>
</body>
</html>
