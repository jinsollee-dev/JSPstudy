<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object p2 = request.getAttribute("person2");
    Object p3 = session.getAttribute("person3");
    Object p4 = application.getAttribute("person4");
%>
<ul>
    <li>request 객체 정보 : <%=(p2==null)? "null" : ((Person)p2).getName() %></li>
    <li>request 객체 정보 :<%=(p2==null)? "null" : ((Person)p2).getAge() %></li>
    <li>session 객체 정보 :<%=(p3==null)? "null" : ((Person)p3).getName() %></li>
    <li>session 객체 정보 : <%=(p3==null)? "null" : ((Person)p3).getAge() %></li>
    <li>application 객체 정보 :<%=(p4==null)? "null" : ((Person)p4).getName() %></li>
    <li>application 객체 정보 : <%=(p4==null)? "null" : ((Person)p4).getAge() %></li>
</ul>



</body>
</html>
