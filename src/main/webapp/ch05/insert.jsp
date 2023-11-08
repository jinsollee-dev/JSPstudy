<%@ page import="common.JDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    String name = request.getParameter("name");

    JDBCConnect jdbc = new JDBCConnect();
    String sql = "insert into member(id, pass, name) value(?,?,?)";
    PreparedStatement pstmt = jdbc.conn.prepareStatement(sql);
    pstmt.setString(1,id);
    pstmt.setString(2,pass);
    pstmt.setString(3,name);
    int i = pstmt.executeUpdate();
    jdbc.close();
    if(i==1){
       response.sendRedirect("list.jsp");
    } else {
        response.sendRedirect("inputForm.jsp");
    }
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
