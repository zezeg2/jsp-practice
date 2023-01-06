<%@ page import="domain.members.dao.MemberDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="domain.members.dtos.InfoMemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! MemberDAO dao = MemberDAO.getInstance();%>
<%! List<InfoMemberDTO> list;%>
<html>
<head>
    <title>Admin | MemberList</title>
</head>
<body>
<%
    try {
        list = dao.getAllMemberInfo(Integer.parseInt(request.getParameter("page")));
    } catch (SQLException e) {
        throw new RuntimeException(e);
    }
%>
<%for (int i = 0; i < list.size(); i++) {%>
<h3><%=list.get(i).toString()%>
</h3>
<%}%>
<% for (int i = 1; i <= dao.countPage(); i++) { %>
<a href="?page=<%=i%>"><%=i%> |</a>
<%}%>
<a href="../views/info.jsp">뒤로가기</a>
</body>
</html>
