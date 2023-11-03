

<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-11-01
  Time: 오후 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>3. 요청 헤더 정보 출력하기</h2>
<%
    Enumeration headers = request.getHeaderNames();
    while (headers.hasMoreElements()){
        String headerName = (String)headers.nextElement();
        String headerValue = request.getHeader(headerName);
        out.println("헤더명 : " + headerName + ", 헤더값 :" + headerValue + "<br>");
    }

%>
</body>
</html>
