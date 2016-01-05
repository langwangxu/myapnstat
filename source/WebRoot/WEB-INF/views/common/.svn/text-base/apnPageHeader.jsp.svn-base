<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
    String context = request.getContextPath();
    request.setAttribute("context",context);
%>
	 <!--导航栏 start-->
    <nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only>Toggle navigation</span>
					<span class="icon-bar"> </span>
					<span class="icon-bar"> </span>
					<span class="icon-bar"> </span>
				</button>
				<a href="<c:url value='/'/>" class="navbar-brand"><i class="fa fa-flag myi fa-red"></i>APN-aaa管理信息系统</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value='/'/>">首页</a></li>

					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">统计功能<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<c:url value='/stat/percentResfail'/>">失败原因占比统计</a></li>
							<li><a href="<c:url value='/stat/topNResfail'/>">失败原因TopN统计</a></li>
							<li><a href="<c:url value='/stat/epriseFlowQuery'/>">企业周期流量查询</a></li>
						</ul>
					</li>
					<li><a href="#">关于</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="modal fade" id="about-modal" tabindex="-1" role="dialog" aria-labelledby="modal-label" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">关闭</span></button>
                    <h4 class="modal-title" id="modal-label">关于系统架构</h4>
                </div>
                <div class="modal-body">
                    <p>当前系统采用了Bootstrap v3.0作为视图层的静态结构，配合JSTL动态数据判断，结合Spring MVC的相关标记，共同组成了视图展现。后台架构分别采用了SpringMVC作为控制层，Spring作为Bean的工厂，同时组织管理业务层的事务控制。系统采用Hibernate作为实体数据的持久化工具。DB使用mysql固化数据。</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">了解了</button>
                </div>
            </div>
        </div>
    </div>