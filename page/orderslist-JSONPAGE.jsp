<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>

<head>
<!-- 页面meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>异步刷新数据 - ajax</title>
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
</head>

<body class="hold-transition skin-purple sidebar-mini">

	<div class="wrapper">

		<!-- 页面头部 -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 页面头部 /-->
		<!-- 导航侧栏 -->
		<jsp:include page="aside.jsp"></jsp:include>
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
					<li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
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
										<button type="button" class="btn btn-default" title="删除">
											<i class="fa fa-trash-o"></i> 删除
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
								<div class="has-feedback">
									<input type="text" class="form-control input-sm"
										placeholder="搜索"> <span
										class="glyphicon glyphicon-search form-control-feedback"></span>
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
										<th class="sorting_asc sorting_asc_disabled">消费类型</th>
										<th class="sorting_desc sorting_desc_disabled">备注</th>
										<th class="sorting">下单时间</th>
										<th class="text-center">操作</th>
										<th class="text-center">总数</th>
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
		//最初ajax函数 展示页面数据 包括上一页  下一页  和 显示第几页
		//把集合抽出来当做公共数据
		let pageinfo = new Array();
		pageinfo.push({page:"1",size:"3"});
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
			var pageSize = $("#changePageSize").find("option:selected").val();
			var total = document.getElementById('endpage').valueOf();
			var pageinfo1 = new Array();
            console.log("pageinfo[0].page",pageinfo[0].page+1);
            var j = pageinfo[0].page +1 ;
            if(j>total){
				pageinfo[0].page = total;
				pageinfo1.push({page:total,size:pageSize});
			}else{
				pageinfo[0].page = j;
				pageinfo1.push({page:j,size:pageSize});
				console.log("当前page值为===============================================",pageinfo[0].page);
			}
			ajaxss(pageinfo1);
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
			console.log("+++++++++++++++++++",pageinfo);
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
				url:"${pageContext.request.contextPath}/hutuzhang/hutubegin/Record/recordlist",   //回发到的页面
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
								"<td>" + content.id + "<td>" +
								"<td>" + content.spend + "<td>" +
								"<td>" + content.cidname + "<td>" +
								"<td>" + content.comment + "<td>" +
								"<td>" + content.dateime + "<td>" +
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
		$(document).ready(function() {
			// 选择框
			$(".select2").select2();

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