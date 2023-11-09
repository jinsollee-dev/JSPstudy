<%@ page import="common.JDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    JDBCConnect jdbc = new JDBCConnect();
    int mno = Integer.parseInt(request.getParameter("mno"));
    String sql = "delete from member where mno=?";
    PreparedStatement pstmt = jdbc.conn.prepareStatement(sql);
    pstmt.setInt(1, mno);
    int inResult = pstmt.executeUpdate();
    if(inResult==1){
        response.sendRedirect("list.jsp");
    }else {
        response.sendRedirect("detail.jsp?mno="+mno);
    }

%>
</body>
</html>
