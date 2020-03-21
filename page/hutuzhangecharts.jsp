<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2020/1/13
  Time: 14:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | ChartJS</title>
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
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
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
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                ChartJS
                <small>Preview sample</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/hutuzhang/hutuzhangjsp"><i class="fa fa-dashboard"></i>首页</a></li>
                <li><a href="#">Charts</a></li>
                <li class="active">柱状图</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
                                <%--echarts div所在--%>
                                <%--柱状图--%>
                                    <div class="box box-success" style="width: 50%">
                                        <div class="box-header with-border">
                                            <h3 class="box-title">柱状图</h3>

                                            <div class="box-tools ">
                                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                </button>
                                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                            </div>
                                        </div>
                                        <div class="box-body chart-responsive">
                                            <div class="chart" id="mainecarts" style="width: 600px;height:300px;"></div>
                                        </div>
                                    </div>
                                        <!-- /.box-body -->
                                        <div class="box box-danger"  style="width: 50%">
                                            <div class="box-header with-border">
                                                <h3 class="box-title">折线图</h3>

                                                <div class="box-tools ">
                                                    <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                                </div>
                                            </div>
                                            <div class="box-body chart-responsive">
                                                <div class="chart" id="advertEcharts" style="height: 300px; position: relative;"></div>
                                            </div>
                                            <!-- /.box-body -->
                                        </div>


                                    <div class="box box-info ">
                                        <div class="box-header with-border">
                                            <h3 class="box-title">饼图</h3>

                                            <div class="box-tools pull-right">
                                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                                </button>
                                                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                            </div>
                                        </div>
                                        <div class="box-body chart-responsive">
                                            <div class="chart" id="pie_echarts" style="height: 300px;"></div>
                                        </div>
                                        <!-- /.box-body -->
                                    </div>
                        <!-- /.box-body -->
                    <!-- /.box -->
                    <!-- /.box -->
                <!-- /.col (RIGHT) -->
            <!-- /.row -->
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
<!-- ChartJS -->
<%--<script src="${pageContext.request.contextPath}/AdminLte/bower_components/chart.js/Chart.js"></script>--%>
<script src="${pageContext.request.contextPath}/Echarts/echarts.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/AdminLte/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/AdminLte/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/AdminLte/dist/js/demo.js"></script>
<!-- page script -->
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('mainecarts'));
    var namey = [];    //类别数组（实际用来盛放X轴坐标值）
    var numo = [];    //销量数组（实际用来盛放Y坐标值）
    var ecartsbug = new Array();

    $.ajax({
        type: 'get',
        url: '${pageContext.request.contextPath}/hutuzhang/hutubegin/Record/show/showmonthtotal',//请求数据的地址
        dataType: "json",        //返回数据形式为json
        success: function (json) {
            console.log("请求返回的数据为：",json);
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            var json1 = json;
            $.each(json1, function (index, item) {
                namey.push(item.month);    //挨个取出类别并填入类别数组
                numo.push(item.spendMonth);    //挨个取出销量并填入销量数组
            });

            myChart.hideLoading();    //隐藏加载动画
            linechart();

            myChart.setOption({        //加载数据图表
                xAxis: {
                    data: namey
                },
                series: [{
                    // 根据名字对应到相应的系列
                    data: numo
                }]
            });
            ecartsbugs();
        },
        error: function (errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    });

    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '消费统计'
        },
        tooltip: {},
        legend: {
            data:['花费']
        },
        xAxis: {
            data: []
        },
        yAxis: {},
        series: [{
            name: '花费',
            type: 'bar',
            data: []
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
    /////////////////////////////
    //var XData = ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];
    //var YData = [10, 23, 65, 36, 85, 43, 60];
    //折线图函数在柱状图函数运行成功开始加载数据的时候运行
    function linechart() {
        var rllfx = echarts.init(document.getElementById("advertEcharts"));
        var option = {
            /* 线条颜色，可设置多个颜色 */
            color: ['#ffa82f'],
            /* 图像四周边距设置 */
            grid:{
                left:30,
                top:30,
                right:20,
                bottom:30
            },
            /* 图例说明 */
            legend: {
                // 图例排项 vertical-"竖向"; horizontal-"横向"
                orient: 'horizontal',
                // 图例组件离容器左侧的距离
                right : 60,
                top: 0,
                //图例文字的样式
                textStyle:{
                    color:'#6ab2ec',
                },
                // 与series中每个name一一对应
                data:['消费金额']
            },
            /* 鼠标悬浮时显示数据 */
            tooltip : {
                trigger: 'axis',
                axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                    type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                }
            },
            xAxis: {
                type: 'category',
                data: namey,
                //设置轴线的属性
                axisLine:{
                    lineStyle:{
                        color:'#6ab2ec',
                    }
                },
                //调整x轴的lable
                axisLabel:{
                    textStyle:{
                        fontSize:10 // 让字体变小
                    }
                }
            },
            yAxis: {
                type: 'value',
                // 控制网格线是否显示
                splitLine: {
                    show: true,
                    //  改变轴线颜色
                    lineStyle: {
                        // 使用深浅的间隔色
                        color: ['#132a6e']
                    }
                },
                //设置轴线的属性
                axisLine:{
                    lineStyle:{
                        color:'#6ab2ec',
                    }
                }
            },
            /* 数据配置，若有多条折线则在数组中追加{name: , data: } */
            series: [{
                name:'消费金额',
                data: numo,
                type: 'line',
                symbol: 'circle',
                // 设置折点大小
                symbolSize: 10,
                // 设置为光滑曲线
                smooth: true
            },]
        };
        rllfx.setOption(option);
    }
    //饼状图
    function ecartsbugs() {
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('pie_echarts'));
        // 指定图表的配置项和数据
        option = {
            title: {
                text: '月份',
                x: 'left'
            },
            tooltip: {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient : 'vertical',
                x : 'left',
                data:[]
            },
            color: ['#CD5C5C', '#00CED1', '#9ACD32', '#FFC0CB'],
            stillShowZeroSum: false,
            series: [
                {
                    name: '消费分布',
                    type: 'pie',
                    radius: '80%',
                    center: ['60%', '60%'],
                    data: [],
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(128, 128, 128, 0.5)'
                        }
                    }
                }
            ]
        };

        // 使用刚指定的配置项和数据显示图表。

        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
        $.ajax({
            type: 'get',
            url: '${pageContext.request.contextPath}/hutuzhang/hutubegin/Record/show/showmonthtotal',//请求数据的地址
            dataType: "json",        //返回数据形式为json
            success: function (json) {
                console.log("请求返回的数据为：",json);
                //请求成功时执行该函数内容，result即为服务器返回的json对象
                var json1 = json;
                var names=[];
                var nums = [];
                $.each(json1, function (index, item) {
                    // namey.push(item.month);    //挨个取出类别并填入类别数组
                    // numo.push(item.spendMonth);//挨个取出销量并填入销量数组
                    var obj = new Object();
                    names.push(item.month);
                    obj.name = item.month;
                    obj.value = item.spendMonth;
                    nums.push(obj);
                });

                myChart.hideLoading();    //隐藏加载动画
                myChart.setOption({        //加载数据图表
                    legend:{
                        data:names
                    },
                    series: [{
                        // 根据名字对应到相应的系列
                        data: nums
                    }]
                });
            },
            error: function (errorMsg) {
                //请求失败时执行该函数
                alert("图表请求数据失败!");
                myChart.hideLoading();
            }
        });

    }

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
    $(document).ready(function() {
        ajaxname();
    });
</script>
</body>
</html>

