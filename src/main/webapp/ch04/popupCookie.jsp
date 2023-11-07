<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String chkVal = request.getParameter("inactiveToday");
    if(chkVal != null && chkVal.equals("1")){
        Cookie cookie = new Cookie("PopupClose", "off"); //Popupclase 변수에 off넣어서 클라이언트에 돌려주기
        cookie.setPath(request.getContextPath()); //root 페이지 쿠키 공유
        cookie.setMaxAge(60*60*24);
        response.addCookie(cookie);
        out.print("쿠키: 하루동안 열지 않음"); // 이 결과값은 popupMain의 ajax 함수에 정의한 resData에 저장돼서 반환

    }
%>
