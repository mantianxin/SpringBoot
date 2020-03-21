<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2020/1/1
  Time: 16:04
  To change this template use File | Settings | File Templates.
  参考页面：modals.html
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>一本糊涂账SSM版--首页</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/AdminLte/dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <style>
        .example-modal .modal {
            position: relative;
            top: auto;
            bottom: auto;
            right: auto;
            left: auto;
            display: block;
            z-index: 1;
        }

        .example-modal .modal {
            background: transparent !important;
        }


    </style>
</head>
<body class="hold-transition skin-blue sidebar-mini">
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

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- 面包屑导航 <h1>标签内容可不要-->
        <section class="content-header">
            <h1>
                糊涂账
                <small>最新</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/hutuzhang/hutuzhangjsp"><i class="fa fa-dashboard"></i>首页</a></li>
                <li><a href="#">后台</a></li>
                <li class="active">页面</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="callout callout-info">
                <h4>Reminder!</h4>
                Instructions for how to use modals are available on the
                <a href="http://getbootstrap.com/javascript/#modals">Bootstrap documentation</a>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-default">
                        <div class="box-header with-border">
                            <h3 class="box-title">糊涂帐功能区域</h3>
                        </div>
                        <%--主题页面div区域--%>
                        <div id = "main" class="box-body">

                        </div>
                    </div>
                </div>
            </div>

            <div class="modal fade" id="modal-default">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Default Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-primary fade" id="modal-primary">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Primary Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-info fade" id="modal-info">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Info Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-warning fade" id="modal-warning">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Warning Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-success fade" id="modal-success">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Success Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

            <div class="modal modal-danger fade" id="modal-danger">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Danger Modal</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 2.4.13
        </div>
        <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE</a>.</strong> All rights
        reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>

            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-user bg-yellow"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                <p>New phone +1(800)555-1234</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                <p>nora@example.com</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <i class="menu-icon fa fa-file-code-o bg-green"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                <p>Execution time 5 seconds</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="label label-danger pull-right">70%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Update Resume
                                <span class="label label-success pull-right">95%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Laravel Integration
                                <span class="label label-warning pull-right">50%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)">
                            <h4 class="control-sidebar-subheading">
                                Back End Framework
                                <span class="label label-primary pull-right">68%</span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Allow mail redirect
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Other sets of options are available
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Expose author name in posts
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Allow the user to show his name in blog posts
                        </p>
                    </div>
                    <!-- /.form-group -->

                    <h3 class="control-sidebar-heading">Chat Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Show me as online
                            <input type="checkbox" class="pull-right" checked>
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Turn off notifications
                            <input type="checkbox" class="pull-right">
                        </label>
                    </div>
                    <!-- /.form-group -->

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Delete chat history
                            <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                        </label>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/AdminLte/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/AdminLte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/AdminLte/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/AdminLte/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/AdminLte/dist/js/demo.js"></script>
<script type="text/javascript">
    let date=new Date();
    var pageinfo = new Array();
    pageinfo.push({month:date.getMonth()+1,year:"2020"});
    var names = [];
    $(document).ready(function() {
        Money(pageinfo);
    });
    //发送请求至LoginController,获取用户名与头像
    function ajaxname() {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"${pageContext.request.contextPath}/sucess/username",
            contentType:"application/json",
            async: true,
            success: function (data) {
                console.log("请求返回的数据ajaxname为(参数有name)",data);
                var o1 = JSON.stringify(data);//转换为json字符串
                var o = JSON.parse(o1);//转换为对象 names
                console.log(document.getElementById("names"));
                names.push({names:o.name,picnames:o.picname});
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

                $("#mainew").append(' <li class="header">一本糊涂账功能区域</li>\n' +
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
                   ' <ul class="treeview-menu">\n' +
                '                        <li id="system-setting"><a href="${pageContext.request.contextPath}/hutuzhang/jizhang?name='+ o.name+'&&picname='+o.picname+'"> <i class="fa fa-circle-o"></i>记账\n' +
                '                        </a></li>\n' +

                '                    </ul>'+
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
    //自定义数据 需要的数据都可以往集合里面加
    function Money(pageinfo) {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"${pageContext.request.contextPath}/hutuzhang/AccountYearIncome",
            data:JSON.stringify(pageinfo),
            contentType:"application/json",
            async:true,
            success: function(data) {
                console.log("请求返回的数据Money为(参数有 month,year)：",data);
                $("#main").empty();   //清空div中内容
                var o1 = JSON.stringify(data);//转换为json字符串
                var o = JSON.parse(o1);//转换为对象
                ajaxname();
                console.log("o的属性值为：",o[0].countweek);
                $("#main").append(' <span ><span name="month"  style="font-size:20px;color: #ffd026">'+o[0].month+'</span>月.支出<p>'+ o[0].spendMonth+ '</p></span></hr>\n' +
                    '                            <%--<span id="pay">本月收入0.00</span>--%>\n' +
                    '                            <span CLASS="">预算<a>点此设置</a><sapn name="monthpay" class="pull-right">本月收入0.00</sapn></span>\n' +
                    '                        </br>\n' +
                    '                            </br>\n' +
                    '                            <hr style=\'background-color:#f4f4f4; height:1px; border:none;\'\'/>\n' +
                    '                            <%--<button style="color: white"><span class="fa fa-fw fa-heartbeat pull-left">今天 <span style="color: red">0.00</span></span>--%>\n' +
                    '                                <%--<p>還沒有記過賬<span style="color: green">0.00</span></p></button>--%>\n' +
                    '                            <div class="fa fa-fw fa-heartbeat pull-left fa-pull-left">\n' +
                    '                            </div>\n' +
                    '                            <div class=" with-border pull-left">\n' +
                    '                                <span class="pull-left">今天</span></br>\n' +
                    '                                <span class="pull-left">今天还没记过账</span>\n' +
                    '                            </div>\n' +
                    '                            <div class="with-border pull-right">\n' +
                    '                                <span style="color: red" class="pull-right">'+ o[5].spendDay+ '</span></br>\n' +
                    '                                <span class="pull-right" style="color: green">0.00</span>\n' +
                    '                            </div>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            <hr style=\'background-color:#f4f4f4; height:1px; border:none;\'\'/>\n' +
                    '                            <div class="fa fa-fw fa-heartbeat pull-left fa-pull-left">\n' +
                    '                            </div>\n' +
                    '                            <div class="with-border pull-left">\n' +
                    '                                <span class="pull-left">本周</span></br>\n' +
                    '                                <span class="pull-left">'+o[2].startdate+'至'+o[2].enddate+'</span>\n' +
                    '                            </div>\n' +
                    '                            <div class="with-border pull-right">\n' +
                    '                                <span style="color: red" class="pull-right">'+o[3].spendWeek+'</span></br>\n' +
                    '                                <span class="pull-right" style="color: green">0.00</span>\n' +
                    '                            </div>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            <hr style=\'background-color:#f4f4f4; height:1px; border:none;\'\'/>\n' +
                    '                            <div class="fa fa-fw fa-heartbeat pull-left fa-pull-left">\n' +
                    '                            </div>\n' +
                    '                            <div class="pull-left">\n' +
                    '                                <span class="pull-left">本月</span></br>\n' +
                    '                                <span class="pull-left">'+o[2].startmonth+'至'+o[2].endMonth+'</span>\n' +
                    '                            </div>\n' +
                    '                            <div class="pull-right">\n' +
                    '                                <span style="color: red" class="pull-right">'+ o[0].spendMonth+ '</span>' +
                    '</br>' +
                    '                                <span class="pull-right" style="color: green">0.00</span>\n' +
                    '                            </div>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            <hr style=\'background-color:#f4f4f4; height:1px; border:none;\'\'/>\n' +
                    '                            <div class="fa fa-fw fa-heartbeat pull-left fa-pull-left">\n' +
                    '                            </div>\n' +
                    '                            <div class="pull-left">\n' +
                    '                                <span class="pull-left">本年</span></br>\n' +
                    '                                <span class="pull-left">2020年</span>\n' +
                    '                            </div>\n' +
                    '                            <div class="pull-right">\n' +
                    '                                <span style="color: red" class="pull-right">'+o[4].spendYear+'</span></br>\n' +
                    '                                <span class="pull-right" style="color: green">0.00</span>\n' +
                    '                            </div>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            </br>\n' +
                    '                            <hr style=\'background-color:#f4f4f4; height:1px; border:none;\'\'/>\n' +
                    '                            <div class="fa fa-fw fa-heartbeat pull-left fa-pull-left">\n' +
                    '                            </div>\n' +
                    '                            <div class="pull-left">\n' +
                    '                                <span class="pull-left">社区</span></br>\n' +
                    '                                <span class="pull-left">办信用卡，能赚钱</span>\n' +
                    '                            </div>\n' +
                    '                            <div class="pull-right">\n' +
                    '                                <span style="color: black" class="pull-right">前往社区</span></br>\n' +
                    '                            </div>');
            },
            error:function(){
                $("#endorses").empty();   //清空div中内容
                $("#endorses").append('<strong><p style="text-indent:2em">No Contents</p></strong>');
            }
        });
    }

</script>
</body>
</html>

