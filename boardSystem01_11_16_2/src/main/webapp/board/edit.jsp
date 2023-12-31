<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page import="utils.JSFunction" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-14
  Time: 오후 2:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num=Integer.parseInt(request.getParameter("num"));
    BoardDAO dao=new BoardDAO();
    BoardDTO dto=dao.selectView(num);
    String sessionId=session.getAttribute("userId").toString();
    if(!sessionId.equals(dto.getId())){
        JSFunction.alertBack("작성자만 수정할 수 있음",out);
        return;
    }
    dao.close();
%>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript">
        function validateForm(form) {  // 폼 내용 검증
            if (form.title.value == "") {
                alert("제목을 입력하세요.");
                form.title.focus();
                return false;
            }
            if (form.content.value == "") {
                alert("내용을 입력하세요.");
                form.content.focus();
                return false;
            }
        }
    </script>
</head>
<body>
<jsp:include page="../common/link.jsp"/>
<h2>게시글 수정 폼</h2>
<form name="editFrm" method="post" action="editProcess.jsp"
      onsubmit="return validateForm(this)">
    <input type="hidden" name="num" value="<%=num%>">
    <table>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title" value="<%=dto.getTitle()%>"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" style="width: 90%;"><%=dto.getContent()%></textarea></td>
        </tr>
        <tr>
            <td colspan="2">
                <button type="submit">게시글 수정</button>
                <button type="reset">새로고침</button>
                <button type="button" onclick="location.href='list.jsp'">목록보기</button>
            </td>
        </tr>
    </table>

</form>
</body>
</html>
