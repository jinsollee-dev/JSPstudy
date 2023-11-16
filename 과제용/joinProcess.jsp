<%@ page import="model1.member.MemberDTO" %>
<%@ page import="model1.member.MemberDAO" %>
<%@ page import="utils.JSFunction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String user_name = request.getParameter("user_name");
    String user_id = request.getParameter("user_id");
    String user_pass = request.getParameter("user_pass");

    MemberDTO dto = new MemberDTO();
    dto.setName(user_name);
    dto.setId(user_id);
    dto.setPass(user_pass);

    MemberDAO dao = new MemberDAO();
    int iResult = dao.insertMember(dto);
    dao.close();

    if(iResult==1){
        response.sendRedirect("../board/list.jsp");
    }else{
        JSFunction.alertBack("회원가입 실패하였습니다", out);
    }


%>

</body>
</html>
