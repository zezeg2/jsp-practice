<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    private int multiply(int n1, int n2) {
        return n1 * n2;
    }
%>
<html>
<head>
    <title>Multiplication Tables</title>
    <script src="<%=request.getContextPath()%>/statics/jquery-3.6.1.min.js"></script>
    <script>
      $(document).ready(() => {
        $("table, tr, td").css({border: "2px blue solid", borderCollapse: "collapse", padding:"2px"})
        $("tr:odd").css({color: "white"})
      })
    </script>
</head>
<body>
<% if(request.getMethod().equals("GET")) {%>
<jsp:forward page="rejected.jsp"/>
<% }%>
<table>
    <%for (int i = Integer.parseInt(request.getParameter("start")); i <= Integer.parseInt(request.getParameter("end")); i++) {%>
    <tr style="background-color: <%= i % 2 == 0 ? "gray" : "pink"%>; border-style: solid">
        <%for (int j = 1; j < 10; j++) {%>
        <td><%=i%> X <%=j%> = <%=multiply(i, j)%></td>
        <%}%>
    </tr>
    <%}%>
</table>
</body>
</html>
