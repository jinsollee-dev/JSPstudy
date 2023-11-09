<%@ page import="common.OracleJDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    OracleJDBCConnect ojdbc = new OracleJDBCConnect();
    String id = "test13";
    String pass = "test13";
    String name = "테스트3회원";
    int mno =0;

    String seq_sql ="select seq_mno.nextval from dual";
    Statement stmt = ojdbc.conn.createStatement();
    ResultSet rs = stmt.executeQuery(seq_sql);
    if(rs.next()){
        mno=rs.getInt(1);
    }


    String sql = "insert into member(mno, id, pass, name) values(?,?,?,?)";
    PreparedStatement pstmt = ojdbc.conn.prepareStatement(sql);
    pstmt.setInt(1, mno);
    pstmt.setString(2, id);
    pstmt.setString(3, pass);
    pstmt.setString(4, name);
    int inResult = pstmt.executeUpdate();
    out.println(inResult+"행이 입력되었습니다.");

    //연결 닫기
    ojdbc.close();

%>
</body>
</html>
