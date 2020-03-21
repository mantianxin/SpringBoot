<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2020/3/6
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>糊涂账个人信息页面</title>
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
    <![endif]-->
    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <style>
        .startpage{
            background-color: black;
            height: 5%;
            width: 100%;
        }
        .geren{
            font-size: larger;
            color: green;
            margin-left: 40px;
            margin-bottom: 20px;
            position: relative;
        }

        .peoples {
            width: 250px;
            height: 153px;
            margin-left: 100px;
            float: left;
            position: relative;
        }

        .pimag{
            height: 152px;
            width: 252px;
            margin-top: 50px;
            background-color: green;
            margin-left: 10px;
            float: left;
            background-image: url("${pageContext.request.contextPath}/image/bg1.png");
            background-size: 100%;
            border:1px solid #EEEEEE;
        }
        .pname{
            left: 125px;
            top: 110px;
            position: absolute;
        }
        .pnames{
            left: 215px;
            top: 60px;
            position: absolute;
        }
        .pnamess{
            left: 270px;
            top: 60px;
            position: absolute;
        }
        .changeimg{
            height: 20px;
            width: 65px;
            margin-top: 111px;
            margin-left:19px;
        }
        .changeimgs{
            height: 20px;
            width: 65px;
            margin-top: 105px;
            margin-left:140px;
        }
        .info{
            left:257px;
            top:50px;
            width: 1400px;
            height: 152px;
            position:absolute;
            border:1px solid #EEEEEE;
        }
        .day{
            margin-top:74px;
            margin-left:10px;
        }
        .maintext{
            height: 650px;
            width: 1647px;
            left:10px;
            top:214px;
            position: absolute;
            border:5px solid #EEEEEE;
        }
        .titletext{

        }
        .pull-left1{
            top: 25px;
            position:absolute;
            border:1px solid #DDDDDD;
        }
        .pull-left2{
            top: 35px;
            position:absolute;
            border:1px solid #DDDDDD;
        }
        .pull-left3{
            top: 75px;
            position:absolute;
            border:1px solid #DDDDDD;
        }
        .img-circles {
            width: 80px;
            height: 80px;
            border-radius:50%;
            top:50px;
            left:125px;
            position:absolute;
        }
        .titles{
            margin-left: 820px;
        }
        .sex{
            margin-top: 140px;
            margin-left: 220px;
        }
        .xuexing{
            margin-top: 14px;
            margin-left: 220px;
        }
        .birthday{
            margin-top: 14px;
            margin-left: 220px;
        }
        .location{
            margin-top: 14px;
            margin-left: 220px;
        }
        .QQ{
            margin-top: 14px;
            margin-left: 220px;
        }
        .xuexing-value{
            margin-left: 80px;
        }
        .location-value{
            margin-left: 65px;
        }
        .QQ-value{
            margin-left: 87px;
        }
        .pull-rights{
            margin-right: 20px;
            float: right;
        }
        .img-circless {
            width: 80px;
            height: 80px;
            border-radius:50%;
            top:80px;
            left:25px;
            position:absolute;
        }
        .modalbox{
            font-family: Arial,Helvetica,Sans-Serif;
            position:fixed;
            top:0;
            right: 0;
            bottom:0;
            left: 0;
            background: #000;
            z-index:99999;
            opacity:0;
            -webkit-transition: opacity 400ms ease-in;
            -moz-transtion:opacity 400ms ease-in;
            transition:opacity 400ms ease-in;
            pointer-events:none;
        }
        .modalbox:target{
            opacity: 0.8;
            pointer-events:auto;
        }
        .modalbox-dialog{
            width: 400px;
            position:relative;
            margin:10% auto;
            padding:5px 20px 13px 20px;
            border-radius:10px;
            background:#fff;
        }
    </style>
</head>

<body>
<%--导航栏--%>
<div id="startpage" class="startpage">
    <span class="geren">个人中心</span>
</div>
<%--个人信息--%>
<div id="people" class="peoples">
</div>
<div id="my-modal-box" class="modalbox">
    <div class="modalbox-dialog">
        <a href="#close" title="关闭" class="modalbox-close-btn">X</a>
        <h1 th:inlines="text">文件上传</h1>
        <form action="${pageContext.request.contextPath}/hutuzhang/fileUpload" method="post" enctype="multipart/form-data">
            <p>选择文件: <input type="file" name="fileName"/></p>
            <p><input type="submit" value="提交"/></p>
        </form>
    </div>
</div>
<script src="${pageContext.request.contextPath}/AdminLte/bower_components/jquery/dist/jquery.min.js"></script>
<script type="text/javascript">
    function Fileter() {
        $.ajax({
            type:"post",
            dataType:"json",
            url:"${pageContext.request.contextPath}/hutuzhang/names/value",   //回发到的页面
            contentType:"application/json",
            async:true,
            success: function(data) {
                console.log("后端传回的数据ajaxupload:" + data);
                var enddata = data;
                var o1 = JSON.stringify(data);//转换为json字符串
                var o = JSON.parse(o1);//转换为对象
                $("#people").empty();//先清除div内容
                $("#people").append('<div class="pimag pull-left">\n' +
                    '        <img src="${pageContext.request.contextPath}/image/'+o.picname +'" class="img-circless" alt="User Image">\n' +
                    '        <span class="pname">'+ o.name+'</span>\n' +
                    '    </div>\n' +
                    '\n' +
                    '    <div id="info" class="info">\n' +
                    '        <p class="day">已使用一本糊涂账100天</p>\n' +
                    '    </div>\n' +
                    '    <div id="maintext" class="maintext">\n' +
                    '        <div class="texts">\n' +
                    '            <p id="titles" class="titles">基本信息</p>\n' +
                    '            <img src="${pageContext.request.contextPath}/image/'+o.picname +'" class="img-circles" alt="User Image">\n' +
                    '            <span class="pnames">'+ o.name+'</span>\n' +
                    '            <span class="pnamess">修改</span>\n' +
                    '            <a id="changeimgs" class="changeimgs pull-left" href="#my-modal-box">更换头像</a>\n' +
                    '            <p id="sex" class="sex">性别：<span id="sex-value" class="xuexing-value">女</span><a class="pull-rights">修改</a></p>\n' +
                    '            <p id="xuexing" class="xuexing">血型：<span id="xuexing-value" class="xuexing-value">O</span><a class="pull-rights">修改</a></p>\n' +
                    '            <p id="birthday" class="birthday">生日：<span id="birthday-value" class="xuexing-value">1995.2.3</span><a class="pull-rights">修改</a></p>\n' +
                    '            <p id="location" class="location">居住地：<span id="location-value" class="location-value">安徽淮北</span><a class="pull-rights">修改</a></p>\n' +
                    '            <p id="QQ" class="QQ">QQ：<span id="QQ-value" class="QQ-value">2501061472@qq.com</span><a class="pull-rights">修改</a></p>\n' +
                    '        </div>\n' +
                    '    </div>');
            }
        });
    }
    $(document).ready(function(){
        Fileter();
    });
</script>
</body>
</html>
