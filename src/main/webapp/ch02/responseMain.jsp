<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-11-01
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>1.로그인 폼</h2>
<%
    String loginErr= request.getParameter("loginErr");
    if(loginErr != null)out.print("로그인 실패");
%>
<form action="./responseLogin.jsp" method="post">
    아이디 : <input type ="text" name = "user_id"><br>
    패스워드 : <input type = "text" name = "user_pw"><br>
    <input type = "submit" value="로그인">


</form>
<h2>2. HTTP 응답 헤더 더하기</h2>
<form action="./responseHeader.jsp" method="get">
    날짜형식 : <input type="text" name = "add_date" value="2023-11-02"><br>
    숫자형식 : <input type="text" name = "add_int" value="1234"><br>
    문자형식 : <input type="text" name = "add_Str" value="홍길동"><br>
    <input type = "submit" value="응답 헤더 설정 & 출력">
</form>

</body>
</html>
