<%--
  Created by IntelliJ IDEA.
  User: Mrruan
  Date: 2017-08-26
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<head>

    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>发生了一个错误!</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticsources/css/error/base.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticsources/css/error/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/staticsources/css/error/vendor.css">

    <!-- script
    ================================================== -->
    <script src="<%=request.getContextPath()%>/staticsources/js/error/modernizr.js"></script>

    <!-- favicons
     ================================================== -->
    <link rel="icon" type="<%=request.getContextPath()%>/staticsources/imgs/error/png" href="favicon.png">

</head>

<body>

<!-- header
================================================== -->
<header class="main-header">
    <div class="row">
        <div class="logo">
            <a href="index.jsp">Panda</a>
        </div>
    </div>
</header> <!-- /header -->

<!-- main content
================================================== -->
<main id="main-404-content" class="main-content-static">

    <div class="content-wrap">

        <div class="shadow-overlay"></div>

        <div class="main-content">
            <div class="row">
                <div class="col-twelve">

                    <h1 class="kern-this">未知 错误.</h1>
                    <p>
                        oops! 好像遇到一个不知名的错误
                        尝试更换访问方式(检查操作以及提交的数据等),
                        若错误依旧存在,请尝试联系管理员解决!

                    </p>

                    <div class="search">
                        <form>
                            <input type="text" id="s" name="s" class="search-field" placeholder="键入查找内容...">
                        </form>
                    </div>

                </div> <!-- /twelve -->
            </div> <!-- /row -->
        </div> <!-- /main-content -->
        <div class="copyrights">版权所有 Mrruan</div>

        <footer>
            <div class="row">

                <div class="col-seven tab-full social-links pull-right">
                    <ul>
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                    </ul>
                </div>

                <div class="col-five tab-full bottom-links">
                    <ul class="links">
                        <li><a href="#">回到主页</a></li>
                        <li><a href="#">关于Panda OJ</a></li>
                        <li><a href="mailto:qkmc@outlook.com">BUG报告(有奖报告)</a></li>
                    </ul>

                    <div class="credits">
                        <p>Panda-Online <a href="#" target="_blank" title="Mrruan">熊猫OJ</a> - 版权所有 <a href="#" title="Mrruan" target="_blank">Mrruan</a></p>
                    </div>
                </div>

            </div> <!-- /row -->
        </footer>

    </div> <!-- /content-wrap -->

</main> <!-- /main-404-content -->

<div id="preloader">
    <div id="loader"></div>
</div>

<!-- Java Script
================================================== -->
<script src="<%=request.getContextPath()%>/staticsources/js/jquery-2.1.3.min.js"></script>
<script src="<%=request.getContextPath()%>/staticsources/js/error/plugins.js"></script>
<script src="<%=request.getContextPath()%>/staticsources/js/error/main.js"></script>

</body>

</html>
