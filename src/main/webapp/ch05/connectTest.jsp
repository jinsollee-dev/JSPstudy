<%@ page import="common.JDBCConnect" %>
<%@ page import="common.OracleJDBCConnect" %>
<%@ page import="common.MySQLConnectPool" %>
<%@ page import="common.OracleConnectPool" %>

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

<h2>JDBC 테스트3</h2>
<%
    JDBCConnect jdbc3 = new JDBCConnect(application);
    jdbc3.close();
%>


<h2>OracleJDBC 테스트1</h2>
<%
    OracleJDBCConnect ojdbc1 = new OracleJDBCConnect();
    ojdbc1.close();
%>

<h2>MySQL Connect Pool 테스트</h2>
<%
    MySQLConnectPool mPool = new MySQLConnectPool();
    mPool.close();
%>

<h2>Oracle Connect Pool 테스트</h2>
<%
    OracleConnectPool oPool = new OracleConnectPool();
    oPool.close();
%>
</body>
</html>
