<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    pageContext.setAttribute("name", "홍길동");
    pageContext.setAttribute("score", 80);
    pageContext.setAttribute("person1",new Person("한성봉", 20));
    request.setAttribute("person2", new Person("홍길동", 33));
    session.setAttribute("person3", new Person("박경미", 10));
    application.setAttribute("person4", new Person("김다연", 20));
%>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String pname = pageContext.getAttribute("name").toString();
    int score =(Integer)pageContext.getAttribute("score");
    Person p1 = (Person)pageContext.getAttribute("person1");
    Person p22 = (Person) request.getAttribute("person2");
    Person p3 = (Person) session.getAttribute("person3");


%>
<ul>
    <li><%=pname%></li>
    <li><%=score%></li>
    <li><%=p1.getName()%>, <%=p1.getAge()%></li>
    <li><%=p22.getName()%>, <%=p22.getAge()%></li>
    <li><%=p3.getName()%>, <%=p3.getAge()%></li>
</ul>
<h2>Include page</h2>
<%@include file = "aaa.jsp"%>

<a href = "./aaa.jsp"> aaa.jsp로 이동</a>
<a href = "./ccc.jsp">ccc.jsp로 이동</a>
<%
    //.getRequestDispatcher("bbb.jsp").forward(request, response);
%>
</body>
</html>
