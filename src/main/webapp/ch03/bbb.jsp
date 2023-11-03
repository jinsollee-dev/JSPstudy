<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object name1 = pageContext.getAttribute("name");
    Object score1 =pageContext.getAttribute("score");
    Object p1 = pageContext.getAttribute("person1");
    Object p2 = request.getAttribute("person2");
    Object p3 = session.getAttribute("person3");
%>
<ul>
    <li><%=(name1==null)? "null" : name1 %></li>
    <li><%=(score1==null)? "null" : score1 %></li>
    <li><%=(p1==null)? "null" : ((Person)p1).getName() %></li>
    <li><%=(p1==null)? "null" : ((Person)p1).getAge() %></li>
    <li>request 객체 정보 : <%=(p2==null)? "null" : ((Person)p2).getName() %></li>
    <li>request 객체 정보 :<%=(p2==null)? "null" : ((Person)p2).getAge() %></li>
    <li>session 객체 정보 :<%=(p3==null)? "null" : ((Person)p3).getName() %></li>
    <li>session 객체 정보 : <%=(p3==null)? "null" : ((Person)p3).getAge() %></li>



</ul>

</body>
</html>
