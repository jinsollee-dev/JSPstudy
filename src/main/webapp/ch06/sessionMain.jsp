<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
    long creationTime = session.getCreationTime();
    String creationTimeStr = dateFormat.format(creationTime);
    long lastTime = session.getLastAccessedTime();
    String lastTimeStr = dateFormat.format(lastTime);


%>
<ul>
    <li>세션유지 시간 : <%=session.getMaxInactiveInterval()%></li>
    <li>세션 아이디 : <%=session.getId()%></li>
    <li>최초 요청 시각 : <%=creationTimeStr%></li>
    <li>마지막 요청 시각 : <%=lastTimeStr%></li>
</ul>
</body>
</html>
