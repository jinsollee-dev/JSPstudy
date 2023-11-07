<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>1. 쿠키 설정 </h2>
<%
    Cookie cookie = new Cookie("myCookie", "쿠키1");
    cookie.setPath(request.getContextPath());
    cookie.setMaxAge(3600);
    Cookie cookie2 = new Cookie("myCookie2", "쿠키2");
    response.addCookie(cookie);
    response.addCookie(cookie2);

%>
<h2>2. 쿠키 설정정보 확인</h2>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie c: cookies){
            String cookieName = c.getName();
            String cookieValue = c.getValue();
            String cookiePath = c.getPath();
            int cookietime = c.getMaxAge();
            out.println(cookieName + " : " + cookieValue+"<br>");
            out.println(cookiePath + "<br>");
            out.println(cookietime+ "<br>");
            out.println();
        }
    }
%>

<h2>쿠키 생성 후 다른 페이지에서 확인하기 </h2>
<a href = "aaaa.jsp">aaaa.jsp로 이동</a>
</body>
</html>
