<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-11-01
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장 객체</title>
</head>
<body>
<h2>1. 클라이언트와 서버의 환경정보 읽기</h2>
<a href="./requestWebInfo.jsp?eng=Hello&han=안녕">GET 방식 전송</a>
<br>
<form action="requestWebInfo.jsp" method="post">
    영어: <input type="text" name="eng" value="Bye"><br>
    한글 : <input type="text" name="han" value="잘가">
    <input type="submit" value="POST 방식 전송">

</form>
<h2>2. 클라이언트 다양한 요청 매개변수 읽기</h2>
<form method="post" action="requestParameter.jsp">
    아이디 : <input type="text" name="id"><br>
    성별 :
    <input type="radio" name="sex" value="man">남자
    <input type="radio" name="sex" value="woman">여자<br>
    관심사 :
    <input type="checkbox" name="info" value="eco">경제
    <input type="checkbox" name="info" value="pol" checked="checked">정치
    <input type="checkbox" name="info" value="ent">연예<br>
    자기소개 :
    <textarea name="intro" cols="30" rows="4"></textarea><br>
    <input type="submit" value="전송하기">
</form>
</body>
</html>
