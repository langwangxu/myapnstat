<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>it's Momo | 首页</title>
<link href="<c:url value='/plugins/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/plugins/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css" />
<link href="<c:url value='/css/momocss/pageheader.css'/>" rel="stylesheet" type="text/css" />
</head>
<body>
	<%@ include file="../common/apnPageHeader.jsp"%>
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="5000">
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			<li data-target="#carousel-example-generic" data-slide-to="4"></li>
		</ol>

		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<c:url value='/images/m5.jpg'/>" alt="chrome-big">
				<div class="carousel-caption">
					<h1>向上</h1>
					<p>积极向上的工作态度，是我们不断进取的精神源泉。</p>
					<p>
						<a class="btn btn-lg btn-primary" href="<c:url value='/'/>"
							role="button" target="_blank">点我查看</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value='/images/m5.jpg'/>" alt="firefox-big">
				<div class="carousel-caption">
					<h1>竞争</h1>
					<p>适当而良好的竞争氛围，使我们不断超越自己。</p>
					<p>
						<a class="btn btn-lg btn-primary" href="<c:url value='/'/>"
							target="_blank" role="button">点我查看</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value='/images/m5.jpg'/>" alt="opera-big">
				<div class="carousel-caption">
					<h1>合作</h1>
					<p>团队的合作互助，保证产品优质高效的不断产出。</p>
					<p>
						<a class="btn btn-lg btn-primary" href="<c:url value='/'/>"
							target="_blank" role="button">点我查看</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value='/images/m5.jpg'/>" alt="safari-big">
				<div class="carousel-caption">
					<h1>热情</h1>
					<p>火辣持续的工作热情，让我们拥有强大的战斗力。</p>
					<p>
						<a class="btn btn-lg btn-primary" href="<c:url value='/'/>"
							target="_blank" role="button">点我查看</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img src="<c:url value='/images/m5.jpg'/>" alt="ie-big">
				<div class="carousel-caption">
					<h1>完美</h1>
					<p>追求完美的梦想，一直涌动在我们的心间。</p>
					<p>
						<a class="btn btn-lg btn-primary" href="<c:url value='/'/>"
							target="_blank" role="button">点我查看</a>
					</p>
				</div>
			</div>
		</div>

		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<div class="container" id="summary-container">
		<div class="row">
			<div class="col-md-4">
				<div class="md-i">
					<i class="fa fa-server"></i>
				</div>
				<h2>VIP</h2>
				<p>展示餐厅所有vip会员的信息，可以根据用户名和卡号进行模糊查询</p>
				<p>
					<a href="<c:url value='/vip/list'/>" class="btn btn-default" role="button">点我查看</a>
				</p>
			</div>
			<div class="col-md-4">
				<div class="md-i">
					<i class="fa fa-group"></i>
				</div>
				<h2>团队</h2>
				<p>团队聚合了众多C++和Java等方面的专家级工程师，在各自岗位，大施拳脚，各领风骚。</p>
				<p>
					<a class="btn btn-default" href="<c:url value='/vip/list'/>" role="button">点我查看</a>
				</p>
			</div>
			<div class="col-md-4">
				<div class="md-i">
					<i class="fa fa-weixin"></i>
				</div>
				<h2>交流</h2>
				<p>无论技术交流，还是团队建设，都达到了预期的效果：技术的精进，合作的提升。</p>
				<p>
					<a class="btn btn-default" href="<c:url value='/vip/list'/>" role="button">点我查看</a>
				</p>
			</div>
		</div>
		<hr class="divider">
		<ul class="nav nav-tabs" role="tablist" id="tab-list">
			<li class="active"><a href="#cr" role="tab" data-toggle="tab">AAA系统</a></li>
			<li><a href="#ff" role="tab" data-toggle="tab">统计系统</a></li>
			<li><a href="#sf" role="tab" data-toggle="tab">技术精粹</a></li>
			<li><a href="#op" role="tab" data-toggle="tab">队伍风采</a></li>
			<li><a href="#ie" role="tab" data-toggle="tab">点滴储备</a></li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="cr">
				<div class="row feature">
					<div class="col-md-7">
						<h2 class="feature-heading">
							AAA系统 <span class="text-muted">包括多种类型的AAA产品</span>
						</h2>
						<p class="lead-18">
							无线网络事业部，研发了多种类的AAA系统。包括：<br> APN
							AAA系统：对于深圳联通为企业客户提供的无线APN接入业务，建设满足APN用户对二次认证的要求，并能提供业务管理和系统管理等功能。<br>
							Femto AAA系统：应用于中国移动TD-SCDMA
							Femto网络，能够为运营商Femto接入管理平台提供全面的认证和计费解决方案。<br> 此外，还包括
							AN-AAA系统，公网企业AAA系统等。
						</p>
					</div>
					<div class="col-md-5 mdi-2">
						<i class="fa fa-font fa-red"></i><i class="fa fa-font fa-green"></i><i
							class="fa fa-font fa-blue"></i>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="ff">
				<div class="row feature">
					<div class="col-md-5">
						<img class="img-responsive"
							src="<c:url value='/images/stat.jpg'/>" alt="firefox">
					</div>
					<div class="col-md-7">
						<h2 class="feature-heading">
							统计系统 <span class="text-muted">为电信运营商提供策略支撑</span>
						</h2>
						<p class="lead-18">
							以无线上网用户的话单为主要数据源，实现对无线上网用户及业务的使用、分布与发展情况的统计分析。<br>
							协助运营商了解用户行为特征、网络话务分布状况、网络资源负荷情况，把握系统运行情况和业务发展趋势，
							为运维工作提供发现问题、分析问题和解决问题的手段。<br>
							为网络建设和优化工作提供详实的数据支撑，为市场营销开展新的业务提供决策依据。
						</p>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="sf">
				<div class="row feature">
					<div class="col-md-7">
						<h2 class="feature-heading">
							Hadoop <span class="text-muted">Apache开发的分布式系统基础架构</span>
						</h2>
						<p class="lead-18">
							Hadoop的框架最核心的设计就是：HDFS和MapReduce。HDFS为海量的数据提供了存储，则MapReduce为海量的数据提供了计算。<br>
							高可靠性：Hadoop按位存储和处理数据的能力值得人们信赖。<br>
							高扩展性：Hadoop在计算机集簇间分配数据并计算，这些集簇方便地扩展到数以千计的节点中。<br>
							高效性：Hadoop在节点之间动态地移动数据，保证各个节点的动态平衡，速度快。<br> 另外，还有高容错性，低成本等。
						</p>
					</div>
					<div class="col-md-5">
						<img class="feature-image img-responsive"
							src="<c:url value='/images/hadoop.jpg'/>" alt="Safari">
					</div>
				</div>
			</div>
			<div class="tab-pane" id="op">
				<div class="row feature">
					<div class="col-md-5">
						<img class="feature-image img-responsive"
							src="<c:url value='/images/team.jpg'/>" alt="Opera">
					</div>
					<div class="col-md-7">

						<h2 class="feature-heading">
							团队向上冲 <span class="text-muted">跳跃吧，兄弟……</span>
						</h2>

						<p class="lead-18">
							超级英雄,演唱：邓超<br> 黑咖啡品味有多浓，我只要汽水的轻松，大热天做个白日梦<br>
							梦见我变成了彩虹，我有想奔跑的冲动，有你在跌倒也从容<br> 无所畏惧的去追梦，汗水书写这份光荣，电影中角色也会有不同<br>
							每一个小人物也拥有小的梦，大屏幕映不出现实中的暗涌<br> ……
						</p>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="ie" style="background-color: #FEF2F2;">
				<div class="row feature">
					<div class="col-md-7">
						<h2 class="feature-heading">
							大数据 <span class="text-muted">关键词</span>
						</h2>
						<p class="lead-18">
							<span class="badge">HDFS(Hadoop)</span><span class="badge">Linux
								Ext4/NFS</span><span class="badge">结构化数据Cassandra</span> <span
								class="badge">结构化数据PostGre/Mysql</span><span class="badge">数据仓库
								Infobright</span><span class="badge">非结构化数据全文检索</span> <span
								class="badge">分布式学习Spark</span><span class="badge">机器学习Spark
								MLib</span><span class="badge">类Sql检索Spark Sql</span> <span
								class="badge">NLP处理API</span><span class="badge">数据订阅Kafka</span><span
								class="badge">ETL Kettle</span><span class="badge">业务规则引擎</span>
							<span class="badge">流式实时计算Storm</span><span class="badge">统计性分析SPSS/SAS/R</span><span
								class="badge">数据挖掘SPSS Modeler/Weka</span> <span class="badge">可视化分析TableAU</span><span
								class="badge">在线可视化(ECharts/D3)</span><span class="badge">工具/语言（Java/Python）</span>
						</p>
					</div>
					<div class="col-md-5">
						<img class="feature-image img-responsive"
							src="<c:url value='/images/bigdata.jpg'/>" alt="IE">
					</div>
				</div>
			</div>
		</div>
		<hr class="divider">

		<footer>
			<p class="pull-right">
				<a href="#top">返回顶部</a>
			</p>
			<p>
				<a href="#">&copy;2014 MOMO</a>
			</p>
		</footer>
	</div>
	<script src="<c:url value='/plugins/jquery/jquery-1.10.2.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/plugins/bootstrap/js/bootstrap.min.js'/>"
		type="text/javascript"></script>
</body>
</html>