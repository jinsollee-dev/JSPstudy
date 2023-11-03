<%@ page import="common.Person" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name1 = pageContext.getAttribute("name").toString();
    int score1 =(Integer)pageContext.getAttribute("score");
    Person p2 = (Person)pageContext.getAttribute("person1");
%>
<ul>
    <li><%=name1%></li>
    <li><%=score1%></li>
    <li><%=p2.getName()%>, <%=p2.getAge()%></li>
</ul>
</body>
</html>
