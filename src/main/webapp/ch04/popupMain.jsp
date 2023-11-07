<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String popupMode = "on";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie c : cookies) {
            String cookieName = c.getName();
            String cookieValue = c.getValue();
            if (cookieName.equals("PopupClose")) {
                popupMode = cookieValue;
            }
        }
    }
%>
<html>
<title>Title</title>
<style>
    div#popup {
        position: absolute;
        top: 100px;
        left: 50px;
        color: yellow;
        width: 270px;
        height: 100px;
        background-color: grey;
    }

    div#popup > div {
        position: relative;
        background-color: #ffffff;
        top: 0;
        border: 1px solid grey;
        padding: 10px;
        color: black;

    }
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script>
        $(function () {
        $('#closeBtn').click(function () {
            $('#popup').hide();
            var chkVal = $("input :checkbox[id=inactiveToday]:checked").val(); //check했을 때 value값
            if (chkVal == 1){
                $.ajax({
                    url: './popupCookie.jsp',
                    type: 'get',
                    data: {inactiveToday: chkVal},
                    dataType: "text",
                    success: function (resData) {
                        if (resData != '')  location.reload();
                        }
                    });
                 }
            });
        });
</script>

<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>--%>
<%--<script>--%>
<%--    $(function() {--%>
<%--        $('#closeBtn').click(function() {--%>
<%--            $('#popup').hide();--%>
<%--            var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();--%>
<%--            if(chkVal==1){--%>
<%--                $.ajax({--%>
<%--                    url : './popupCookie.jsp',--%>
<%--                    type : 'get',--%>
<%--                    data : {inactiveToday : chkVal},--%>
<%--                    dataType : "text",--%>
<%--                    success : function(resData) {--%>
<%--                        if (resData != '') location.reload();--%>
<%--                    }--%>
<%--                });--%>
<%--            }--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>


<body>
<h2>팝업 메인 페이지</h2>
<h2>팝업 메인 페이지(ver 0.1)</h2>
<%
    for (int i = 1; i < 10; i++) {
        out.println("현재 팝업창은 " + popupMode + "상태입니다.<br>");

    }
    if (popupMode.equals("on")) {
%>
<div id="popup">
    <h2 align="center">공지사항 팝업입니다.</h2>
    <div align="right">
        <form name="popFrm">
            <input type="checkbox" id="inactiveToday" value="1"/>
            하루 동안 열지 않음
            <input type="button" value="닫기" id="closeBtn"/>
        </form>
    </div>
</div>
<%}%>

</body>
</html>