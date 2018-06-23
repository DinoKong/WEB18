<%@ page import="com.dino.domain.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: dino
  Date: 2018/6/9
  Time: 下午3:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <!-- 模拟域中的数据-->
    <%
        request.setAttribute("company", "Dino");
        User user1 = new User();
        user1.setId(1);
        user1.setName("zhangsan");
        user1.setPassword("123");
        session.setAttribute("user",user1);

        //存储一个集合
        List<User> list = new ArrayList<User>();
        application.setAttribute("",object);
        User user2 = new User();
        user2.setId(2);
        user2.setName("lisi");
        user2.setPassword("123");
        ((ArrayList) list).add(user2);

        User user3 = new User();
        user3.setId(3);
        user3.setName("wangwu");
        user3.setPassword("123");
        list.add(user3);
        application.setAttribute("list", list);
    %>

    <!-- 脚本方式取出域中的值-->
    <%=request.getAttribute("company")%>
    <%
        User sessionUser = (User) session.getAttribute("user");
        out.write(sessionUser.getName());
    %>

    <%--使用EL表达式获得域中的值--%>
    ${requestScope.company}
    ${sessionScope.user.name}
    ${applicationScope.list[1].name}

    <%--使用el表达式 全域查找--%>
    ${company}
    ${user.name}
    ${list[1].name }
</body>
</html>
