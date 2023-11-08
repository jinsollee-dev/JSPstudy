<%@ page import="common.OracleJDBCConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page import="common.OracleConnectPool" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>오라클 DB활용 회원 목록 데이터 조회</h2>
<%
   //OracleJDBCConnect ojdbc = new OracleJDBCConnect();
    OracleConnectPool oPool = new OracleConnectPool();
    String sql = "select * from member";
    Statement stmt = oPool.conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);

    while (rs.next()){
        //int mno=rs.getInt("mno");
        String id = rs.getString("id");
        String pw = rs.getString("pass");
        String name = rs.getString("name");
        Date regidate = rs.getDate("regidate");
        out.println(String.format("%s %s %s %s",id,pw,name,regidate)+"<br>");
    }
    //연결 닫기
    oPool.close();
%>
</body>
</html>
