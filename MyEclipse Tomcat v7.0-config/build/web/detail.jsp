<%-- 
    Document   : detail
    Created on : 2014-10-8, 20:48:27
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        isbn：${detail[0]}<br>
        title:${detail[1]}<br>
        publisher:${detail[3]}<br>
        publishdate:${detail[4]}<br>
        price(￥):${detail[5]}<br>
        <a href="index.jsp">返回</a><br>
    </body>
</html>
