<%-- 
    Document   : searchresult
    Created on : 2014-10-8, 10:00:08
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
        所著书目：<br>
     <!-- <c:forEach var="book" items="${list}">
<tr><td>${book.isbn}</td>  
<td>${book.title}</td>  
<td>${book.apublisher}</td>  
<td>${book.publisherData}</td>
<td>${book.price}</td>
</tr>  </c:forEach>
    ````${list.getint(1)}-->
        ${booktitle[0]}<br>
        ${booktitle[1]}<br>
         <form action="showdetail" method="get">
         要看书名：<input type="text" name="book" />
         <input type="submit" value="submit" /><br>
                 <a href="index.jsp">返回</a><br>
        <a href="delete.jsp">删除</a><br>
    </body>
</html>
