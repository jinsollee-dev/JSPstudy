<%@ page import="common.JDBCConnect" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>


</head>
<body>
<h2>JDBC 테스트1</h2>

<%
    JDBCConnect jdbc1 = new JDBCConnect();
    jdbc1.close();
%>

<h2>JDBC 테스트2</h2>
<%
    String driver = application.getInitParameter("MySQLDriver");
    String url = application.getInitParameter("MySQLURL");
    String id = application.getInitParameter("MySQLId");
    String pwd = application.getInitParameter("MySQLPwd");

    JDBCConnect jdbc2 = new JDBCConnect(driver, url, id, pwd);
    jdbc2.close();
%>

</body>
</html>
