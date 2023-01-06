<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Input</title>
</head>
<body>
<form action="multiplication-tables.jsp" method="post">
  <span>
    <label for="start">시작단</label>
    <input type="text" id="start" name="start" required>
  </span>
    <span>
    <label for="end">종료단</label>
    <input type="text" id="end" name="end" required>
  </span>
    <input type="submit">
</form>
</body>
</html>
