<%@ page import="common.JDBCConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="common.MySQLConnectPool" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>회원 목록 데이터 조회</h2>
<%
    //JDBCConnect mjdbc = new JDBCConnect();
    MySQLConnectPool mPool = new MySQLConnectPool();
    String sql = "select * from member";
    Statement stmt = mPool.conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);

    while (rs.next()){
        int mno=rs.getInt("mno");
        String id = rs.getString("id");
        String pw = rs.getString("pass");
        String name = rs.getString("name");
        Date regidate = rs.getDate("regidate");
        out.println(String.format("%d %s %s %s",mno,id,pw,regidate)+"<br>");
    }
    //연결 닫기
    mPool.close();
%>
</body>
</html>
