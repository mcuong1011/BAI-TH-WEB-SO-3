<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username != null) {
%>
<h1>Chào mừng, <%= username %>!</h1>
<a href="logout-servlet">Đăng xuất</a>
<%
    } else {
        response.sendRedirect("index.jsp");
    }
%>
</body>
</html>