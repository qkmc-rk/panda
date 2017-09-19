<%--
  Created by IntelliJ IDEA.
  User: Mrruan
  Date: 2017-09-14
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">

    <title>Panda - 基于JAVA的在线java代码评判系统</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath()%>/staticsources/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath()%>/staticsources/css/index/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/staticsources/css/index/font-awesome.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<!-- Static navbar -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp">主页</a></li>
                <li class="active"><a href="about.jsp">关于Panda</a></li>
                <li><a href="index.jsp#works">开始工作</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>


<div id="aboutwrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
            </div>
        </div><! --/row -->
    </div> <!-- /container -->
</div><! --/aboutwrap -->

<div class="container">
    <div class="row centered mt mb">
        <div class="col-lg-8 col-lg-offset-2">
            <h2>Panda Online</h2>
            <p>panda online是一款个人独立开发的java代码在线调试工具,使用java ee作为其强大的后台,以java实现动态编译java文件,并通过记录各种信息,为用户提供一个有乐趣的代码学习平台!</p>
            <p>该网站属于个人网站,版权所有归Mrruan,并且此网站遵循apache2.0开源协议,任何人均可对其进行更改,更新,但是不得用于商业用途.</p>
            <p>献给每一位为开源事业做出或大或小贡献以及热爱开源事业的人们!</p>
        </div>

    </div><! --/row -->
</div><! --/container -->

<div id="footerwrap">
    <div class="container">
        <div class="row centered">
            <div class="col-lg-4">
                <p><b>(c) Copyright 2017 Mrruan. All Rights Reserved.</b></p>

            </div>

            <div class="col-lg-4">
                <p>contact me at:</p>
            </div>
            <div class="col-lg-4">
                <p>qkmc@outlook.com</p>
            </div>
        </div>
    </div>
</div><! --/footerwrap -->



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath()%>/staticsources/js/jquery.min.js"></script>
</body>
<script src="<%=request.getContextPath()%>/staticsources/js/bootstrap.min.js"></script>
</body>
</html>
