<%--
  Created by IntelliJ IDEA.
  User: Mrruan
  Date: 2017-08-18
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.panda.model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <div>
                <h4 style="color:#C9E2B3;">
                        welcome,${sessionScope.user.userName}
                </h4>
            </div>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="index.jsp">主页</a></li>
                <li><a href="about.jsp">关于Panda</a></li>
                <li><a href="#works">开始使用</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>


<div id="headerwrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <h4>欢迎来到</h4>
                <div>
                    <img src="<%=request.getContextPath()%>/staticsources/imgs/index/main-logo.png" style="max-width:100%" />
                </div>
                <h4>java代码在线评测系统</h4>
            </div>
        </div><! --/row -->
    </div> <!-- /container -->
</div><! --/headerwrap -->

<section id="works"></section>
<div class="container">
    <div class="row centered mt mb">
        <h1>开始使用</h1>

        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
            <a href="<%=request.getContextPath()%>/pbmrecord.do"><img src="<%=request.getContextPath()%>/staticsources/imgs/index/portfolio/folio01.jpg" class="img-responsive"></a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
            <a href="work.html"><img src="<%=request.getContextPath()%>/staticsources/imgs/index/portfolio/folio02.jpg" class="img-responsive"></a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
            <a href="work.html"><img src="<%=request.getContextPath()%>/staticsources/imgs/index/portfolio/folio03.jpg" class="img-responsive"></a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
            <a href="work.html"><img src="<%=request.getContextPath()%>/staticsources/imgs/index/portfolio/folio04.jpg" class="img-responsive"></a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
            <a href="work.html"><img src="<%=request.getContextPath()%>/staticsources/imgs/index/portfolio/folio05.jpg" class="img-responsive"></a>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 gallery">
            <a href="work.html"><img src="<%=request.getContextPath()%>/staticsources/imgs/index/portfolio/folio06.jpg" class="img-responsive"></a>
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
