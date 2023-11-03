<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2023-11-01
  Time: 오후 3:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
//    request.setCharacterEncoding("UTF-8");
    String id = request.getParameter("id");
    String sex = request.getParameter("sex");
    String[] favo = request.getParameterValues("info");
    String favo_str ="";
    if (favo !=null) {
        for (int i = 0; i < favo.length; i++) {
            favo_str += favo[i] + " ";
        }
    }
    String intro = request.getParameter("intro").replace("\r\n", "<br>");
%>
<ul>
    <li> 아이디 : <%=id%></li>
    <li> 성별 : <%=sex%></li>
    <li> 관심사 : <%=favo_str%></li>
    <li> 자기소개 : <%=intro%></li>

</ul>
</body>
</html>
