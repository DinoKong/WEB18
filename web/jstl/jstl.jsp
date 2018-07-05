<%--
  Created by IntelliJ IDEA.
  User: dino
  Date: 2018/7/3
  Time: 下午9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setAttribute("count",10);
    %>
    <%--jstl标签经常会和el配合使用--%>
    <%-- test 代表的返回boolean的表达式--%>
    <c:if test="${count==10}">xxxx</c:if>
    <%--forEach模拟--%>
    <c:forEach begin="0" end="5" var="i">
        ${i}
    </c:forEach>
    <%---模拟增强for productList---List<Product>
        for (Product product : productList){
            syso(product.getPname())
        }
    -%>
    <%--items: 一个集合或数组 var:代表集合中的某一个元素--%>
    <%--<c:forEach items="${productList }" var="pro">--%>
        <%--${pro.pname}--%>
    <%--</c:forEach>--%>
</body>
</html>
