<%--
  Created by IntelliJ IDEA.
  User: Mrruan
  Date: 2017-08-18
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>看看你都做了些什么</title>
    <div>
        <h4>你尝试着做了如下题目</h4>
        <table style="border: solid grey 1px">
            <tr>
                <th>题目名称</th>
                <th>提交内容</th>
                <th>结果</th>
            </tr>
            <c:forEach items="${records}" var="record">
                <tr>
                    <td> <c:out value="${record.key}"></c:out></td>
                    <td><c:out value="${record.value.pbmCode}"></c:out></td>
                    <td><c:out value="${record.value.pbmResult}"></c:out></td>
                </tr>
            </c:forEach>

        </table>
    </div>

</head>
<body>

</body>
</html>
