<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登陆</title>
    <%--//注意文件路径与你项目可能不一样--%>
    <script language="JavaScript" src="${pageContext.request.contextPath}/AdminLte/bower_components/jquery/dist/jquery.min.js"></script>
    <%--//注意文件路径与你项目可能不一样--%>
    <script charset="UTF-8" src="${pageContext.request.contextPath}/AdminLte/lzw/js/Lzw.js" type="text/javascript"></script>
    <style>
        <%--注意访问背景图片的格式--%>
        body{
            /*border:3px solid red;*/
            background-image: url("${pageContext.request.contextPath}/image/loginBackground.png") ;
            background-size: 100%;
        }
        /*可以让元素靠的近一些*/
        *{
            margin:0px;
            padding: 0px;
            box-sizing: border-box;
        }
        .lo_main{
            height: 500px;
            width: 600px;
            border: 3px solid red;
            margin: auto;
            margin-top: 200px;
            background-color: white;
            margin-right: 200px;
            padding: 15px;
        }
        .lo_left{

            /*border: 3px solid red;*/
            float:left;
            margin: 0px;
        }
        .lo_left > p:first-child{
            color:#ffd026;
            font-size: 24px;
        }
        .lo_left > p:last-child{
            color:#A6A6A6;

        }
        .lo_right > p:first-child{
            color:;

        }
        .lo_center{
            width:370px;

            /*border: 3px solid red;*/
            float:left;
            margin-top: 50px;
            margin-left: 110px;
        }
        .lo_right{

            /*border: 3px solid red;*/
            float:right;
            margin-top: 15px;
        }
        .lo_right > p:first-child{
            color:#A6A6A6;
        }
        .lo_right p a {
            color:pink;
        }
        .td_left {
            width:50px;
            text-align: left;
            height: 60px;
            /*padding-left: 50px;*/
        }
        .td_right{
            padding-left: 5px;
        }
        #stu_id,#stu_pwd,#verification{
            width: 170px;
            height:32px;
            border:1px solid #A6A6A6;
            /*设置边框*/
            border-radius: 6px;
            padding-left: 5px;
        }

    </style>
</head>

<body style="background-color:#ffba53">

<%--//所有onclick属性在js文件实现--%>
<div class="lo_main">
    <div class="lo_left">
        <P>用户登录</P>
        <p>USER LOGIN</p>

    </div>
    <div class="lo_center">
<form id="form_login"  method="post">
    <div>
        <ul>
            <li id="li"><span>用户名</span><input id="stu_id" name="stu_id" type="text" value="" placeholder="用户名" onfocus="showTips('user','用户名必填！')" onblur="check('user','用户名不能为空！')"/>
            </li>
            <li id="li1"><span>密码</span><input id="stu_pwd" name="stu_pwd" type="password" value="" placeholder="密码" onfocus="showTips('password','密码必填')" onblur="check('password','密码不能为空!')"/></li>
            <li id="li2"><span>验证码</span>
                <span><input id="verification" name="verification" type="text" value="" placeholder="验证码" onfocus="showTips('password','验证码必填')" onblur="check('password','验证码不能为空!')"/></span>
                <%--src属性这里用了项目绝对路径--%>
                <cite><img style="position: relative;top:6px;height: 34px;" src="${pageContext.request.contextPath}/hutuzhang/Verification.do" onclick="ChangeVerification()"/></cite>
            </li>
            <li><input type="button" class="loginbtn" value="登录"  onclick="Login()"  /></li>
        </ul>
    </div>
</form>
</div>
</div>
</body>
</html>
