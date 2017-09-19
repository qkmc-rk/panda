<%--
  Created by IntelliJ IDEA.
  User: Mrruan
  Date: 2017-08-18
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Panda - 登录</title>
    <!-- Custom Theme files -->
    <link href="<%=request.getContextPath()%>/staticsources/css/login/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
</head>
<body>
<div class="login">
    <h2>登录到Panda-Online</h2>
    <div class="login-top">
        <div style="width:100px;margin: auto;">
            <a href="index.jsp"><img src="<%=request.getContextPath()%>/staticsources/imgs/login/login-brand.png"/></a>
        </div>
        <form action="<%=request.getContextPath()%>/login.do" method="POST">
            <input type="text" name="username" value="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Id';}">
            <input type="password" name="userpassword" value="userpassword" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}">
            <div class="forgot">
                <a href="#">忘记密码?</a>
                <input type="submit" value="登录" >
            </div>
        </form>
    </div>
    <div class="login-bottom">
        <h3>新用户这里 &nbsp;<a href="#">注册</a></h3>
    </div>
</div>
<div class="copyright">
    <p>(c) Copyright 2017 Mrruan. All Rights Reserved. </p>
</div>
</body>
</html>
