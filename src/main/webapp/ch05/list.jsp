<%@ page import="common.MemberDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="common.JDBCConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>회원 리스트 조회 </h2>

<%
    List<MemberDTO> memberList = new ArrayList<MemberDTO>();
    JDBCConnect jdbc = new JDBCConnect();
    String sql = "select * from member";
    Statement stmt = jdbc.conn.createStatement();
    ResultSet rs = stmt.executeQuery(sql);
    while (rs.next()){
        int mno = rs.getInt("mno");
        String id = rs.getString("id");
        String pass =rs.getString("pass");
        String name = rs.getString("name");
        Date regidate = rs.getDate("regidate");
        memberList.add(new MemberDTO(mno, id, pass, name, regidate));
    }
    jdbc.close();
%>

<table>
    <tr>
        <th>mno</th>
        <th>id</th>
        <th>pass</th>
        <th>name</th>
        <th>regidate</th>
    </tr>
    <%
        for(int i=0; i<memberList.size(); i++){
        MemberDTO m = memberList.get(i);

    %>
        <tr>
            <td><%=m.getMno()%></td>
            <td><a href= "detail.jsp?mno=<%=m.getMno()%>"><%=m.getId()%></a></td>
            <td><%=m.getPass()%></td>
            <td><%=m.getName()%></td>
            <td><%=m.getRegidate()%></td>
        </tr>
     <%}
    %>
</table>
</body>
</html>
