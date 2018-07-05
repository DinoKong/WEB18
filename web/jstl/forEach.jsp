<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><%--
  Created by IntelliJ IDEA.
  User: dino
  Date: 2018/7/5
  Time: 下午8:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        //模拟List<String> strList
        List<String> strList = new ArrayList<String>();
        strList.add("test1");
        strList.add("test2");
        strList.add("test3");
        request.setAttribute("strList", strList);
    %>
    <h1>取出strList的数据</h1>
    <c:forEach items="${strList}" var="str">
        ${str }<br>
    </c:forEach>

</body>
</html>
