%@ page contentType="text/html;charset=UTF-8" language="java" buffer="8kb" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Buffer Size <%= out.getRemaining() %>
</h1>
<h2>자바 Code 실행 결과와 html 태그를 모아서</h2>
<h2>응답 내용(html page => ServerSide Rendering)으로 만들고 </h2>
<h2>서버 내부 버퍼에 저장한다.(아직 전송 전) => 한 번에 전송</h2>
<h2>예외 발생시 취소</h2>
<h1>Buffer Size <%= out.getRemaining() %>
</h1>
<% out.flush(); %>
</body>
</html>
