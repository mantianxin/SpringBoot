<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>糊涂账展示消费记录</title>
    <!-- Tell the browser to be responsive to screen width -->
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/morris/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/select2/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
    <style>
        .alert {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            min-width: 300px;
            max-width: 600px;
            transform: translate(-50%,-50%);
            z-index: 99999;
            text-align: center;
            padding: 15px;
            border-radius: 3px;
        }

        .alert-success {
            color: #3c763d;
            background-color: #dff0d8;
            border-color: #d6e9c6;
        }

        .alert-info {
            color: #31708f;
            background-color: #d9edf7;
            border-color: #bce8f1;
        }

        .alert-warning {
            color: #8a6d3b;
            background-color: #fcf8e3;
            border-color: #faebcc;
        }

        .alert-danger {
            color: #a94442;
            background-color: #f2dede;
            border-color: #ebccd1;
        }
    </style>
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="../../index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>LT</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>

            <div class="navbar-custom-menu">
                <ul id="wrap" class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->
                    <li class="dropdown messages-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-envelope-o"></i>
                            <span class="label label-success">4</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 4 messages</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- start message -->
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/AdminLte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Support Team
                                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <!-- end message -->
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/AdminLte/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                AdminLTE Design Team
                                                <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/AdminLte/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Developers
                                                <small><i class="fa fa-clock-o"></i> Today</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/AdminLte/dist/img/user3-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Sales Department
                                                <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="pull-left">
                                                <img src="${pageContext.request.contextPath}/AdminLte/dist/img/user4-128x128.jpg" class="img-circle" alt="User Image">
                                            </div>
                                            <h4>
                                                Reviewers
                                                <small><i class="fa fa-clock-o"></i> 2 days</small>
                                            </h4>
                                            <p>Why not buy a new awesome theme?</p>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">See All Messages</a></li>
                        </ul>
                    </li>
                    <!-- Notifications: style can be found in dropdown.less -->
                    <li class="dropdown notifications-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning">10</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 10 notifications</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                                            page and may cause design problems
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-users text-red"></i> 5 new members joined
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-user text-red"></i> You changed your username
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="footer"><a href="#">View all</a></li>
                        </ul>
                    </li>
                    <!-- Tasks: style can be found in dropdown.less -->
                    <li class="dropdown tasks-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-flag-o"></i>
                            <span class="label label-danger">9</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="header">You have 9 tasks</li>
                            <li>
                                <!-- inner menu: contains the actual data -->
                                <ul class="menu">
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Design some buttons
                                                <small class="pull-right">20%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">20% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Create a nice theme
                                                <small class="pull-right">40%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">40% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Some task I need to do
                                                <small class="pull-right">60%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">60% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                    <li><!-- Task item -->
                                        <a href="#">
                                            <h3>
                                                Make beautiful transitions
                                                <small class="pull-right">80%</small>
                                            </h3>
                                            <div class="progress xs">
                                                <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">80% Complete</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <!-- end task item -->
                                </ul>
                            </li>
                            <li class="footer">
                                <a href="#">View all tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- User Account: style can be found in dropdown.less -->

                </ul>
            </div>
        </nav>
    </header>
    <!-- 左侧菜单-->
    <aside class="main-sidebar">
        <%--<!-- sidebar: style can be found in sidebar.less -->--%>
        <section  class="sidebar">
            <ul id="mainew" class="sidebar-menu" data-widget="tree">

            </ul>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
        </section>
        <%--<!-- /.sidebar -->--%>
    </aside>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                数据管理 <small>数据列表</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/hutuzhang/hutuzhangjsp"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">数据管理</a></li>
                <li class="active">数据列表</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" title="新建"
                                            onclick="location.href='#'">
                                        <i class="fa fa-file-o"></i> 新建
                                    </button>
                                    <button id ="delete" type="button" class="btn btn-default" title="删除">
                                        <i  class="fa fa-trash-o"></i> 删除
                                    </button>
                                    <button type="button" class="btn btn-default" title="开启">
                                        <i class="fa fa-check"></i> 开启
                                    </button>
                                    <button type="button" class="btn btn-default" title="屏蔽">
                                        <i class="fa fa-ban"></i> 屏蔽
                                    </button>
                                    <button type="button" class="btn btn-default" title="刷新">
                                        <i class="fa fa-refresh"></i> 刷新
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback ">
                                <%--搜索框
                                <input type="text" class="form-control input-sm"--%>
                                       <%--placeholder="搜索"> <span--%>
                                    <%--class="glyphicon glyphicon-search form-control-feedback"></span>--%>
                                <%--选时间段+类别  先完成功能，然后改位置--%>
                                    <span class="pull-right-container">开始日期：</span>
                                <input id="startdate" type="date" placeholder="开始日期" class="pull-right-container">
                                    <span class="pull-right-container">结束日期：</span>
                                    <input id="enddate" type="date" placeholder="结束日期" class="pull-right-container">
                                    <span>分类</span>
                                    <select class="form-control pull-right-container" id="selecttype" onchange="Sidlist(selectid)">
                                        <option value="日用品">日用品</option>
                                        <option value="学习">学习</option>
                                        <option value="人情">人情</option>
                                        <option value="基金">基金</option>
                                    </select>
                                    <div class="alert"></div>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right: 0px;"><input
                                        id="selall" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="sorting_asc">ID</th>
                                <th class="sorting_desc">花销</th>
                                <th class="sorting_asc sorting_asc_disabled">消费时间</th>
                                <th class="sorting_desc sorting_desc_disabled">消费类别</th>
                            </tr>
                            </thead>
                            <tbody id="ajaxtable">

                            </tbody>

                        </table>

                    </div>

                </div>
                <div class="box-footer">
                    <div class="pull-left">
                        <div  class="form-group form-inline">
                            <div id ="pagejson" class="pull-right">
                            </div>
                            每页
                            <select class="form-control" id="changePageSize" onchange="changePageSize()">

                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select> 条
                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul id = "startpageend" class="pagination">

                        </ul>
                    </div>

                </div>
                <!-- /.box-footer-->
            </div>
        </section>
        <!-- 正文区域 /-->
    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->
    <!-- 底部导航 -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0.8
        </div>
        <strong>Copyright &copy; 2019-2020 <a
                href="http://www.itcast.cn">糊涂账</a>.
        </strong> All rights reserved.
    </footer>
    <!-- 底部导航 /-->
</div>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/AdminLte/heima/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript">
    /**
     * 弹出式提示框，默认1.2秒自动消失
     * @param message 提示信息
     * @param style 提示样式，有alert-success、alert-danger、alert-warning、alert-info
     * @param time 消失时间
     */
    var prompt = function (message, style, time)
    {
        style = (style === undefined) ? 'alert-success' : style;
        time = (time === undefined) ? 1200 : time;
        $('<div>')
            .appendTo('body')
            .addClass('alert ' + style)
            .html(message)
            .show()
            .delay(time)
            .fadeOut();
    };

    // 成功提示
    var success_prompt = function(message, time)
    {
        prompt(message, 'alert-success', time);
    };

    // 失败提示
    var fail_prompt = function(message, time)
    {
        prompt(message, 'alert-danger', time);
    };

    // 提醒
    var warning_prompt = function(message, time)
    {
        prompt(message, 'alert-warning', time);
    };

    // 信息提示
    var info_prompt = function(message, time)
    {
        prompt(message, 'alert-info', time);
    };
    //最初ajax函数 展示页面数据 包括上一页  下一页  和 显示第几页
    //把集合抽出来当做公共数据
    var pageinfo = [];
    pageinfo.push({page:"1",size:"3"});
    //查询数据时使用
    //获取删除数据的id值
    var deleteid = [];
    //获取开始时间 结束时间 类别 selectid()函数

    var selectid = [];
    selectid.push({startdate:"20200203",enddate:"20200203",types:"学习",page:"1",size:"3"});
    //查询url
    var ajaxurl ="${pageContext.request.contextPath}/hutuzhang/hutubegin/Record/recordlist"
    var types ;
    function ajaxname() {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"${pageContext.request.contextPath}/hutuzhang/huutzhangaccount/name",
            contentType:"application/json",
            async: true,
            success: function (data) {
                console.log("请求返回的数据ajaxname为(参数有name)",data);
                var o1 = JSON.stringify(data);//转换为json字符串
                var o = JSON.parse(o1);//转换为对象 names
                console.log(document.getElementById("names"));
                $("#wrap").append(' <li class="dropdown user user-menu">\n' +
                    '                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">\n' +
                    '                            <img src="${pageContext.request.contextPath}/image/'+ o.picname +'" class="user-image" alt="User Image">\n' +
                    '                            <span id="names" class="hidden-xs"></span>\n' +
                    '                        </a>\n' +
                    '                        <ul id=""  class="dropdown-menu">\n' +
                    '                            <!-- User image -->\n' +
                    '                            <li class="user-header">\n' +
                    '                                <img src="${pageContext.request.contextPath}/image/'+ o.picname + '" class="img-circle" alt="User Image">\n' +
                    '\n' +
                    '                                <p>\n' +
                    '                                <span id="namess"></span><span>- Web Developer</span>\n' +
                    '                                    <small>Member since Nov. 2012</small>\n' +
                    '                                </p>\n' +
                    '                            </li>\n' +
                    '                            <!-- Menu Body -->\n' +
                    '                            <li class="user-body">\n' +
                    '                                <div class="row">\n' +
                    '                                    <div class="col-xs-4 text-center">\n' +
                    '                                        <a href="#">Followers</a>\n' +
                    '                                    </div>\n' +
                    '                                    <div class="col-xs-4 text-center">\n' +
                    '                                        <a href="#">Sales</a>\n' +
                    '                                    </div>\n' +
                    '                                    <div class="col-xs-4 text-center">\n' +
                    '                                        <a href="#">Friends</a>\n' +
                    '                                    </div>\n' +
                    '                                </div>\n' +
                    '                                <!-- /.row -->\n' +
                    '                            </li>\n' +
                    '                            <!-- Menu Footer-->\n' +
                    '                            <li class="user-footer">\n' +
                    '                                <div class="pull-left">\n' +
                    '                                    <a class="btn btn-default btn-flat" href="${pageContext.request.contextPath}/hutuzhang/names?name='+o.name+'&&picname='+o.picname+'">个人中心</a>\n' +
                    '                                </div>\n' +
                    '                                <div class="pull-right">\n' +
                    '                                    <a href="#" class="btn btn-default btn-flat">Sign out</a>\n' +
                    '                                </div>\n' +
                    '                            </li>\n' +
                    '                        </ul>\n' +
                    '                    </li>');
                //赋值用户名
                document.getElementById("names").innerHTML = o.name;
                //namess
                document.getElementById("namess").innerHTML = o.name;

                $("#mainew").append(' <li class="header">一本糊涂账菜单</li>\n' +
                    '\n' +
                    '                <li class="treeview">\n' +
                    '                    <%--账户页面url--%>\n' +
                    '                    <a href="#">\n' +
                    '                        <i class="fa fa-dashboard"></i> <span>账户</span>\n' +
                    '                        <span class="pull-right-container">\n' +
                    '              <i class="fa fa-angle-left pull-right"></i>\n' +
                    '            </span>\n' +
                    '                    </a>\n' +
                    '                    <ul class="treeview-menu">\n' +
                    '                        <li id="system-setting"><a href="${pageContext.request.contextPath}/hutuzhang/huutzhangaccount?name='+ o.name+'&&picname='+o.picname+'"> <i class="fa fa-circle-o"></i> 賬戶詳情\n' +
                    '                        </a></li>\n' +
                    '                        <li id="system-setting"><a href="#"> <i class="fa fa-circle-o"></i> 註銷賬戶\n' +
                    '                        </a></li>\n' +
                    '                    </ul></li>\n' +
                    '                <li class="treeview">\n' +
                    '                    <%--账户页面url--%>\n' +
                    '                    <a href="#">\n' +
                    '                        <i class="fa fa-dashboard"></i> <span>记录</span>\n' +
                    '                        <span class="pull-right-container">\n' +
                    '              <i class="fa fa-angle-left pull-right"></i>\n' +
                    '            </span>\n' +
                    '                    </a>\n' +
                    '                    <ul class="treeview-menu">\n' +
                    '                        <li id="system-setting"><a href="${pageContext.request.contextPath}/hutuzhang/paypage?name='+ o.name+'&&picname='+o.picname+'"> <i class="fa fa-circle-o"></i>消费记录\n' +
                    '                        </a></li>\n' +
                    '                        <li id="system-setting"><a href="#"> <i class="fa fa-circle-o"></i>收入记录\n' +
                    '                        </a></li>\n' +
                    '                    </ul></li>\n' +
                    '                </li>\n' +
                    '                <li class="treeview">\n' +
                    '                    <%--账户页面url--%>\n' +
                    '                    <a href="#">\n' +
                    '                        <i class="fa fa-dashboard"></i> <span>记一笔</span>\n' +
                    '                        <span class="pull-right-container">\n' +
                    '              <i class="fa fa-angle-left pull-right"></i>\n' +
                    '            </span>\n' +
                    '                    </a>\n' +
                    '                </li>\n' +
                    '                <li class="treeview">\n' +
                    '                    <%--账户页面url--%>\n' +
                    '                    <a href="#">\n' +
                    '                        <i class="fa fa-dashboard"></i> <span>圖表</span>\n' +
                    '                        <span class="pull-right-container">\n' +
                    '              <i class="fa fa-angle-left pull-right"></i>\n' +
                    '            </span>\n' +
                    '                    </a>\n' +
                    '                    <ul class="treeview-menu">\n' +
                    '                        <li id="system-setting"><a href="${pageContext.request.contextPath}/hutuzhang/ecarts/load?name='+ o.name+'&&picname='+o.picname+'"> <i class="fa fa-circle-o"></i> 柱狀圖\n' +
                    '                        </a></li>\n' +
                    '                        <li id="system-setting"><a href="#"> <i class="fa fa-circle-o"></i> 餅狀圖表\n' +
                    '                        </a></li>\n' +
                    '                    </ul></li>\n' +
                    '                <li class="treeview">\n' +
                    '                    <%--账户页面url--%>\n' +
                    '                    <a href="#">\n' +
                    '                        <i class="fa fa-dashboard"></i> <span>设置</span>\n' +
                    '                        <span class="pull-right-container">\n' +
                    '              <i class="fa fa-angle-left pull-right"></i>\n' +
                    '            </span>\n' +
                    '                    </a>\n' +
                    '                </li>');

            }
        })
    }
    //上一页
    function startpage() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").find("option:selected").val();
        var pageinfo1 = new Array();
        console.log("pageinfo[0].page",pageinfo[0].page-1);

        var j = pageinfo[0].page - 1;

        if(j<=0){
            pageinfo1.push({page:1,size:pageSize});
            pageinfo[0].page = 1;
            console.log("当前page值为===============================================",pageinfo[0].page);
        }else{
            pageinfo1.push({page:j,size:pageSize});
            pageinfo[0].page = j;
            console.log("当前page值为===============================================",pageinfo[0].page);
        }
        ajaxss(pageinfo1);
    }
    //下一页
    function npage(){
        //获取下拉框的值
        var total = document.getElementById('endpage').valueOf();
        var totals = parseInt(total);
        var j = parseInt(pageinfo[0].page)+1;
        if(j>totals){
            pageinfo[0].page = total;
        }else{
            pageinfo[0].page = j.toString();
            console.log("当前page值为===============================================",parseInt(pageinfo[0].page));
        }
        ajaxss(pageinfo);
    }

    //具体页码点击事件
    function GudingPage(j){
        //获取下拉框的值
        var pageSize = $("#changePageSize").find("option:selected").val();
        var pageinfo1 = new Array();
        console.log("J++",j);
        pageinfo1.push({page:j,size:pageSize});
        pageinfo = pageinfo1;
        console.log("pageinfo",pageinfo[0].page);
        ajaxss(pageinfo1);
    }
    //初始化完成页面加载数据
    function Filter(pageinfo) {
        console.log("已加载的Filter函数的pageinfo数据为：",pageinfo);
        ajaxss(pageinfo);
    }
    //根据select框的数值控制显示页面数据条数  重复函数一：changePageSize()、
    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").find("option:selected").val();
        var pageinfo1 = new Array();
        pageinfo1.push({page:"1",size:pageSize});
        ajaxss(pageinfo1);
    }
    function ajaxss(pageinfo1){
        $.ajax({
            type:"POST",
            dataType:"json",
            url:ajaxurl,   //回发到的页面
            data:JSON.stringify(pageinfo1),
            contentType:"application/json",
            async:true,
            success: function(data) {
                console.log("请求返回的数据changePageSize为：",data);
                var endorsesdata = data;
                $("#pagejson").empty();   //清空div中内容
                $("#startpageend").empty();   //清空div中内容
                var o1 = JSON.stringify(data);//转换为json字符串
                var o = JSON.parse(o1);//转换为对象
                console.log(o.total);
                var pagejson ="<span>"+ "共计" + o.total +"一共"+ o.pages+"页"+"</span>";
                $("#pagejson").append(pagejson);
                $("#startpageend").append('<ul class="pagination"><li><a  id="startpage" value="1" onclick="startpage()">上一页</a ></ul>');
                for(var i = 1;i<=o.pages;i++){
                    var innerpage = "<li>" + "<a>" + i + "</a>" + "</li>";
                    $("#startpageend").append('<ul class="pagination"><li><a   id= "page' + i + '" onclick="GudingPage(' + i + ')"> '+ i+'  </a ></li></ul>');
                }

                $("#startpageend").append('<ul class="pagination"><li><a   id="endpage"  value="' + o.pages + '" onclick="npage()">下一页</a ></ul>');
                $("#ajaxtable").empty();   //清空div中内容  index起始位置   content当前的元素
                $.each(endorsesdata.list,function(index,content){
                    var trDom = "<tr>" +
                        //    <td><input name="ids" type="checkbox"></td>
                        '<td><input name="ids" type="checkbox" value="'+content.id+'"></td>' +
                        "<td>" + content.id + "</td>" +
                        "<td>" + content.spend + "</td>" +
                        "<td>" + content.datetime + "</td>" +
                        "<td>" + content.type + "</td>" +
                        "<tr>";
                    $("#ajaxtable").append(trDom);
                });

            },
            error:function(){
                $("#endorses").empty();   //清空div中内容
                $("#endorses").append('<strong><p style="text-indent:2em">No Contents</p></strong>');
            }
        });

    }
    //删除功能函数
    $("#delete").click(function(){
        $.each($('input:checkbox'),function(){
            if(this.checked){
                // window.alert("你选了："+
                //     $('input[type=checkbox]:checked').length+"个，其中有："+$(this).val());
                deleteid.push({id:$(this).val()});
            }
        });
        $.ajax({
            type:"POST",
            dataType:"json",
            url:"${pageContext.request.contextPath}/hutuzhang/hutubegin/Recordto/recordlist/delete",   //回发到的页面
            data:JSON.stringify(deleteid),
            contentType:"application/json",
            async:true,
            success: function(data) {
                var o1 = JSON.stringify(data);//转换为json字符串
                var o = JSON.parse(o1);//转换为对象
                if(o.status){
                    //要加一个判断语句
                    console.log("数据删除成功");
                   window.alert("你删除了"+'+ o.number+' +"个数据");
                   Filter(pageinfo);
                }

            },
            error:function(){
                $('.alert').html('您无此删除数据操作权限').addClass('alert-success').show().delay(1500).fadeOut();
            }
        });
    });

    // 查询部分分页
    //查询功能函数
    function Sidlist(selectid){
        //获取开始时间的值 startdate
        var startdate = $("#startdate").val();

        //获取结束时间的值
        var enddate = $("#enddate").val();

        if(startdate==null){
            console.log("开始时间数据为空，功能完成之后再完善这个操作");
        }else if(startdate==selectid[0].startdate){
            selectid[0].startdate = startdate;
        }else if(startdate===selectid[0].startdate){
           selectid[0].startdate = startdate;
        }

        if(enddate==null){

        }else if(enddate==selectid[0].enddate){
            selectid[0].enddate = enddate;
        }else if(enddate ===selectid[0].enddate){
           selectid[0].enddate = enddate;
        }

        //获取选择框的值   selecttype
        var typess = $("#selecttype").find("option:selected").val();
        if(typess==null){
           console.log("搜索类型不能为空");
        }else{
            types = typess;
            var pageSize = $("#changePageSize").find("option:selected").val();
            selectid[0].types = types;
            selectid[0].size = pageSize;
            console.log("selectid的值为：",selectid[0].types);
            ajaxselect(selectid);
        }

    }
    function ajaxselect(selectid){
        $.ajax({
            type:"POST",
            dataType:"json",
            url:"${pageContext.request.contextPath}/hutuzhang/hutubegin/Recordto/recordlist/select",   //回发到的页面
            data:JSON.stringify(selectid),
            contentType:"application/json",
            async:true,
            success: function(data) {
                console.log("后端传回的数据selectid:"+data);
                var enddata = data;
                var o1 = JSON.stringify(data);//转换为json字符串
                var o = JSON.parse(o1);//转换为对象
                $("#pagejson").empty();   //清空div中内容
                $("#startpageend").empty();   //清空div中内容
                //根据后端传回的json数据，判断状态
                if(o.total!=0){
                    console.log("查询有数据");
                    $("#changePageSize").empty();
                    $("#changePageSize").append('<select class="form-control" id="changePageSize" onchange="changePageSizes()">\n' +
                        '"<option value="3">"+ 3 +"</option>"\n' +
                        '"<option value="4">"+ 4 +"</option>"\n' +
                        '"<option value="5">"+ 5 +"</option>"\n' +
                        '</select> 条');
                    var pagejson ="<span>"+ "共计" + o.total +"一共"+ o.pages+"页"+"</span>";
                    $("#pagejson").append(pagejson);
                    $("#startpageend").append('<ul class="pagination"><li><a  id="startpage" value="1" onclick="startpages()">上一页</a ></ul>');
                    for(var h = 1;h<=o.pages;h++){
                        var innerpage = "<li>" + "<a>" + h + "</a>" + "</li>";
                        $("#startpageend").append('<ul class="pagination"><li><a   id= "page' + h + '" onclick="GudingPages(' + h + ')"> '+ h+'  </a ></li></ul>');
                    }

                    $("#startpageend").append('<ul class="pagination"><li><a   id="endpages"  value="' + o.pages + '" onclick="npages()">下一页</a ></ul>');
                    $("#ajaxtable").empty();   //清空div中内容  index起始位置   content当前的元素
                    $.each(enddata.list,function(index,content){
                        var trDom = "<tr>" +
                            '<td><input name="ids" type="checkbox" value="'+content.id+'"></td>' +
                            "<td>" + content.id + "</td>" +
                            "<td>" + content.spend +"</td>" +
                            "<td>" + content.datetime + "</td>" +
                            "<td>" + content.type + "</td>" +
                            "<tr>";
                        $("#ajaxtable").append(trDom);
                    });

                }
            },
            error:function(){
               console.log("当前无权限");
            }
        });
    }
    function startpages() {
        var j = selectid[0].page-1;
        console.log("j的值是：selectid[0].page - 1",j);
        if(j<=0){
            selectid[0].page = 1;
            console.log("进入上一页函数");
            console.log("当前selectid[0].page值为===============================================",selectid[0].page);
        }else{
            selectid[0].page = j;
            console.log("进入上一页函数");
            console.log("当前selectid[0].page值为===============================================",selectid[0].page);
        }
        ajaxselect(selectid);
    }
    //下一页
    function npages(){
        //获取页面总数的值
        var total=document.getElementById('endpages').valueOf();
        var totals = parseInt(total);
        var j = parseInt(selectid[0].page)+1;
        if(j>totals){
                selectid[0].page=total;
        }else{
            selectid[0].page=j.toString();
            console.log("进入下一页函数");
            console.log("当前selectid[0].page值为===============================================",selectid[0].page);
        }
        ajaxselect(selectid);
    }
    //具体页码点击事件
    function GudingPages(j){
        //获取下拉框的值
        selectid[0].page = j;
        console.log("当前进入具体页面点击函数");
        console.log("selectid[0].page",selectid[0].page);
        ajaxselect(selectid);
    }

    //根据select框的数值控制显示页面数据条数  重复函数一：changePageSize()、
    function changePageSizes() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").find("option:selected").val();
        selectid[0].size = pageSize;
        ajaxselect(selectid);
    }
    $(document).ready(function() {
        // 选择框
        $(".select2").select2();
        // 类型选择框
        //$("#selecttype").select2();
        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale : 'zh-CN'
        });
    });
    $(document).ready(function() {
        Filter(pageinfo);
    });
    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }
    //ajax函数
    $(document).ready(function(){
        ajaxname();
    });

    $(document).ready(function() {

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass : 'icheckbox_square-blue',
            increaseArea : '20%'
        });
        // 全选操作
        $("#selall").click(function() {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });

    });
</script>
</body>

</html>