<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Collection" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-11-02
  Time: 오후 2:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    SimpleDateFormat s = new SimpleDateFormat("yyyy-mm-dd");
    long add_data =s.parse(request.getParameter("add_date")).getTime();
    int add_int = Integer.parseInt(request.getParameter("add_int"));
    String add_Str = request.getParameter("add_Str");

    //응답헤더에 추가
    response.addDateHeader("myDate", add_data);
    response.addIntHeader("myInt", add_int);
    response.addHeader("myName", add_Str);
    response.setHeader("myName", "홍길동");
    response.setHeader("myAge", "10살");
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>응답헤더 출력</h2>
<%
    Collection<String> headerNames =response.getHeaderNames();
    for(String hName : headerNames){
        String hValue = response.getHeader(hName);
        out.println(hName + " : " + hValue);
    }
%>
</body>
</html>
