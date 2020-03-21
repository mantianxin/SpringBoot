<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="main-sidebar">
	<%--<!-- sidebar: style can be found in sidebar.less -->--%>
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="${pageContext.request.contextPath}/AdminLte/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>李志文</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search...">
				<span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
			</div>
		</form>
		<!-- /.search form -->
		<!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu" data-widget="tree">
			<li class="header">一本糊涂账菜单</li>

			<li class="treeview">
				<%--账户页面url--%>
				<a href="#">
					<i class="fa fa-dashboard"></i> <span>账户</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a href="${pageContext.request.contextPath}/hutuzhang/huutzhangaccount"> <i class="fa fa-circle-o"></i> 賬戶詳情
					</a></li>
					<li id="system-setting"><a href="#"> <i class="fa fa-circle-o"></i> 註銷賬戶
					</a></li>
				</ul></li>
			<li class="treeview">
				<%--账户页面url--%>
				<a href="#">
					<i class="fa fa-dashboard"></i> <span>记录</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a href="${pageContext.request.contextPath}/hutuzhang/paypage"> <i class="fa fa-circle-o"></i>消费记录
					</a></li>
					<li id="system-setting"><a href="#"> <i class="fa fa-circle-o"></i>收入记录
					</a></li>
				</ul></li>
			</li>
			<li class="treeview">
				<%--账户页面url--%>
				<a href="#">
					<i class="fa fa-dashboard"></i> <span>记一笔</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
			</li>
			<li class="treeview">
				<%--账户页面url--%>
				<a href="#">
					<i class="fa fa-dashboard"></i> <span>圖表</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
				<ul class="treeview-menu">
					<li id="system-setting"><a href="${pageContext.request.contextPath}/hutuzhang/ecarts/load"> <i class="fa fa-circle-o"></i> 柱狀圖
					</a></li>
					<li id="system-setting"><a href="#"> <i class="fa fa-circle-o"></i> 餅狀圖表
					</a></li>
				</ul></li>
			<li class="treeview">
				<%--账户页面url--%>
				<a href="#">
					<i class="fa fa-dashboard"></i> <span>设置</span>
					<span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
				</a>
			</li>

		</ul>
	</section>
	<%--<!-- /.sidebar -->--%>
</aside>