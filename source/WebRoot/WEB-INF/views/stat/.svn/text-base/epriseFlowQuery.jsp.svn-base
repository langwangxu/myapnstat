<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>it's apnstat report</title>
	<%@ include file="../common/importMetaCss.jsp"%>
	<!--[if lt IE 9]>
      <script src="<c:url value='/plugins/bootstrap3.4/js/html5shiv.min.js'/>" type="text/javascript"></script>
      <script src="<c:url value='/plugins/bootstrap3.4/js/respond.min.js'/>" type="text/javascript"></script>
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
</head>
<body>
    <!-- %@ include file="../common/apnPageHeader.jsp"%-->
	<div class="container-fluid">
		<div class="well" id="report-header">
			<div class="report-heading text-primary">企业周期流量查询</div>
			<span class="report-s-muted">通过日期范围或企业名称查询对应企业的统计流量的记录</span>
		</div>
		<div class="well">
			<ul class="nav nav-tabs" role="tablist" id="tab-list">
				<li class="active"><a href="#day" role="tab" data-toggle="tab">按天</a></li>
				<li><a href="#month" role="tab" data-toggle="tab">按月</a></li>
				<li><a href="#year" role="tab" data-toggle="tab">按年</a></li>
			</ul>
			<div class="row">
				<div class="col-sm-7">
					<div class="tab-content my-tab-content">
						<div class="tab-pane active" id="day">
							<div class="form-inline">
								<div class="form-group">
									<label for="dtp_input_d1" class="control-label">开始日期</label>
									<div class="input-group date form_date form_date_d" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input_d1" data-link-format="yyyy-mm-dd">
										<input id="sd_bak" class="form-control" size="16" type="text" value="" readonly placeholder="yyyy-mm-dd">
										<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type="hidden" id="dtp_input_d1" value="" /><br/>
								</div>
								<div class="form-group">
									<label for="dtp_input_d2" class="control-label">结束日期</label>
									<div class="input-group date form_date form_date_d" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input_d2" data-link-format="yyyy-mm-dd">
										<input  id="ed_bak" class="form-control" size="16" type="text" value="" readonly placeholder="yyyy-mm-dd">
										<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type="hidden" id="dtp_input_d2" value="" /><br/>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="month">
							<div class="form-inline">
								<div class="form-group">
									<label for="dtp_input_m1" class=" control-label">开始月份</label>
									<div class="input-group date form_date form_date_m" data-date="" data-date-format="yyyy-mm" data-link-field="dtp_input_m1" data-link-format="yyyy-mm">
										<input id="sd_bak" class="form-control" size="16" type="text" value="" readonly placeholder="yyyy-mm">
										<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type="hidden" id="dtp_input_m1" value="" /><br/>
								</div>
								<div class="form-group">
									<label for="dtp_input_m2" class="control-label">结束月份</label>
									<div class="input-group date form_date form_date_m" data-date="" data-date-format="yyyy-mm" data-link-field="dtp_input_m2" data-link-format="yyyy-mm">
										<input  id="ed_bak" class="form-control" size="16" type="text" value="" readonly placeholder="yyyy-mm">
										<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type="hidden" id="dtp_input_m2" value="" /><br/>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="year">
							<div class="form-inline">
								<div class="form-group">
									<label for="dtp_input_y1" class=" control-label">开始年份</label>
									<div class="input-group date form_date form_date_y" data-date="" data-date-format="yyyy" data-link-field="dtp_input_y1" data-link-format="yyyy">
										<input id="sd_bak" class="form-control" size="16" type="text" value="" readonly placeholder="yyyy">
										<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type="hidden" id="dtp_input_y1" value="" /><br/>
								</div>
								<div class="form-group">
									<label for="dtp_input_y2" class="control-label">结束年份</label>
									<div class="input-group date form_date form_date_y" data-date="" data-date-format="yyyy" data-link-field="dtp_input_y2" data-link-format="yyyy">
										<input  id="ed_bak" class="form-control" size="16" type="text" value="" readonly placeholder="yyyy">
										<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
										<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
									</div>
									<input type="hidden" id="dtp_input_y2" value="" /><br/>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="form-inline form-mo">
						<div class="form-group">
							<label for="gname" class="control-label">企业名称</label>
							<input id="gname" class="form-control" size="16" type="text" value="" placeholder="企业名称"/>
						</div>
						<a type="button" class="btn btn-primary pull-right btn-click"><i class="fa fa-search fa-fw"></i>查询报表</a>
					</div>
				</div>
			</div>
		</div>
		
		<!--end 参数区域-->
		<!--报表展示区域 start-->
		<div class="panel panel-default panel-mo">
			<div class="panel-heading">
				企业周期流量查询列表
			</div>
			<div class="panel-body">
				<table class="table table-mo table-bordered table-hover">
					<thead>
						<tr class="tr-mo">
							<th>序号</th>
							<th>企业名称</th>
							<th>统计日期</th>
							<th>流量(字节)</th>
						</tr>
					</thead>
					<tbody>
						<tr class="non_show_tr warning"><td colspan="4" class="non_show_td">无查询记录</td></tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--end 报表展示区域-->
		<!--分页区域 start-->
		<div class="pager-mo"></div>
		<!--end 分页区域-->
	</div>
	<%@ include file="../common/importApnStatJs.jsp"%>
	<script src="<c:url value='/js/json2.js'/>" type="text/javascript"></script>
	<script type="text/javascript">
		var dtpicker_op_d={
			language:  'zh-CN',
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			maxView: 4,
			forceParse: 0,
			pickerPosition: "bottom-left",
			initialDate:new Date(),
			format:'yyyy-mm-dd'
		};
		var dtpicker_op_m={
			language:  'zh-CN',
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 3,
			minView: 3,
			maxView: 4,
			forceParse: 0,
			pickerPosition: "bottom-left"
		};
		var dtpicker_op_y={
			language:  'zh-CN',
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 4,
			minView: 4,
			maxView: 4,
			forceParse: 0,
			pickerPosition: "bottom-left"
		};
		function timeStamp2String(time,type){  
			var datetime = new Date();  
			datetime.setTime(time);  
			var year = datetime.getFullYear();  
			var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;  
			var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();  
			var hour = datetime.getHours()< 10 ? "0" + datetime.getHours() : datetime.getHours();  
			var minute = datetime.getMinutes()< 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();  
			var second = datetime.getSeconds()< 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();  
			var res = year;  
			switch(type){
				case 's':
					res = year + "-" + month + "-" + date+" "+hour+":"+minute+":"+second; 
					break;
				case 'mi':
					res = year + "-" + month + "-" + date+" "+hour+":"+minute
					break;
				case 'h':
					res = year + "-" + month + "-" + date+" "+hour; 
					break;
				case 'd':
					res = year + "-" + month + "-" + date; 
					break;
				case 'm':
					res = year + "-" + month; 
					break;
			}
			return res;
		}
		function initdate(){
			var dtype_arr = ['d','m','y'];
			$.each(dtype_arr,function(i,item){
				var transval = timeStamp2String(new Date(),item);
				$('div.form_date_'+item+' input#sd_bak').val(transval);
				$('div.form_date_'+item+' input#ed_bak').val(transval);
				$('input#dtp_input_'+item+'1').val(transval);
				$('input#dtp_input_'+item+'2').val(transval);
			});
		};
		var queryflag = 0;
		var params = {};
		var url_pre = '<%=request.getContextPath()%>/stat/';
		var url_all = '';
		function dealPostData(){
			var dt_ = $('#tab-list>li.active a').attr('href').substring(1);
			var sdv_ = $('#dtp_input_'+dt_.charAt(0)+'1').val();
			var edv_ = $('#dtp_input_'+dt_.charAt(0)+'2').val();
			if(sdv_==''||edv_==''){
				alert('开始或结束日期不能为空');
				return '';
			}else{
				params.sd = sdv_;
				params.ed = edv_;
				params.dt = dt_;
				params.gname = $('#gname').val();
				url_all = url_pre + 'eprisefq' + params.dt;
				return 'ok';
			}
		}
		function initParams(){
			params.pageNo = 1;
			params.pageSize = 25;
		}
		function toAjax(){
			if(queryflag != 0){
				$ajax();
			}else{
				var postdata = dealPostData();
				if(postdata==''){
					return false;
				}else{
					$ajax();
				}
			}
		}
		function freshMsg(){
			$('table.table-mo tbody').remove();
			var msg_show = '<tr class="non_show_tr warning"><td colspan="4" class="non_show_td"><i class="fa fa-3x fa-blue fa-spinner fa-pulse"></i></td></tr>';
			$('table.table-mo').append('<tbody>'+msg_show+'</tbody>');
		}
		function $ajax(){
			$.ajax({
				type:'post',
				contentType:'application/json',
				url:url_all,
				processData:false,
				dataType:'json',
				data:JSON.stringify(params),
				beforeSend:function(){
					freshMsg();
				},
				success:function(sdata){
					queryflag = 1 ;
					appendTbodyContents(sdata);
					consPaper(sdata);
				},
				error:function(){
					alert('fail');
				}
			});
		}
		function appendTbodyContents(d){
			var tr_c = '';
			var ditems = d.items;
			var flag_arr = ['groupName','stats'+params.dt,'usedVolume'];
			if(ditems && ditems.length>0){
				$.each(ditems,function(i,di){
					var td_c='<td>'+(i+1)+'</td>';
					$.each(flag_arr,function(f,item){
						td_c += '<td>'+di[item]+'</td>';
					});
					tr_c += '<tr>'+td_c+'</tr>';
				});
			}else{
				tr_c += '<tr class="non_show_tr warning"><td colspan="4" class="non_show_td">无查询记录</td></tr>';
			}
			$('table.table-mo tbody').remove();
			$('table.table-mo').append('<tbody>'+tr_c+'</tbody>');
		}
		function consPaper(data){
			//默认的一些属性定义
			var def_pagecount = 10;
			//获取具体的分页信息
			var pagesize = data.pageSize;//每页显示记录数
			var itemcount = data.itemCount;//全部分页总共记录数
			var haspre = data.hasPre;//是否有前一页
			var hasnext = data.hasNext;//是否有下一页
			var pagecount = data.pageCount;//全部记录实际总的页数
			var pageindex = data.pageIndex;//当前页码
			var paperRowHtml = $('.pager-mo .row-mo');
			$('a.a-mo').unbind("click");
			paperRowHtml.remove();
			var newPaperContents = '<div class="row row-mo">';
			newPaperContents +=	'<div class="col-md-5 col-sm-12"><div class="pager-info-mo text-primary">每页显示 '+pagesize+' 条，共 '+itemcount+' 条记录</div></div><div class="col-md-7 col-sm-12"><div class="dataTables_paginate paging_bootstrap"><ul class="pagination pull-right">';
			if(haspre){
				params.pageNo = pageindex - 1;
				newPaperContents += '<li class="prev"><a href="#" class="a-mo">上一页</a></li>';
			}else{
				newPaperContents += '<li class="prev disabled"><span>上一页</span></li>';
			}
			if(pagecount <= def_pagecount){
				for(var i=1;i<=pagecount;i++){
					if(i==pageindex){
						newPaperContents += '<li class="active"><a href="#">'+i+'</a></li>';
					}else{
						params.pageNo = i;
						newPaperContents += '<li><a href="#" class="a-mo">'+i+'</a></li>';
					}
				}
			}else{
				for(var i=1;i<=def_pagecount;i++){
					if(pageindex <= def_pagecount/2){
						if(i == pageindex){
							newPaperContents += '<li class="active"><a href="#">'+i+'</a></li>';
						}else if(def_pagecount-i>2){
							params.pageNo = i;
							newPaperContents += '<li><a href="#" class="a-mo">'+i+'</a></li>';
						}else if(i==pageCount-2){
							newPaperContents += '<span>...</span>';
						}else{
							var pageNo_1 = pagecount-(def_pagecount-i);
							params.pageNo = pageNo_1;
							newPaperContents += '<li><a href="#" class="a-mo">'+pageNo_1+'</a></li>';
						}
					}else if(pagecount-pageindex<def_pagecount/2){
						if(i<3){
							params.pageNo = i;
							newPaperContents += '<li><a href="#" class="a-mo">'+i+'</a></li>';
						}else if(i==3){
							newPaperContents += '<span>...</span>';
						}else{
        					var pageNo_2 = pagecount-(def_pagecount-i);
        					if(pageNo_2 == pageindex){
        						newPaperContents += '<li class="active"><a href="#">'+pageNo_2+'</a></li>';
        					}else{
        						params.pageNo = pageNo_2;
        						newPaperContents += '<li><a href="#" class="a-mo">'+pageNo_2+'</a></li>';
        					}
        				}
					}else{
						if(i<3){
							params.pageNo = i;
							newPaperContents += '<li><a href="#" class="a-mo">'+i+'</a></li>';
						}else if(i==3 || i == def_pagecount-2){
							newPaperContents += '<span>...</span>';
						}else if(i>def_pagecount - 2){
							var pageNo_3 = pagecount-(def_pagecount-i);
							params.pageNo = pageNo_3;
							newPaperContents += '<li><a href="#" class="a-mo">'+pageNo_3+'</a></li>';
						}else{
							if(def_pagecount%2==0){
								if(i == def_pagecount/2){
									newPaperContents += '<li class="active"><a href="#">'+pageindex+'</a></li>';
								}else if(i < def_pagecount/2){
									var pageNo_4 = pageindex-(def_pagecount/2-i);
									params.pageNo = pageNo_4;
									newPaperContents += '<li><a href="#" class="a-mo">'+pageNo_4+'</a></li>';
								}else{
									var pageNo_5=pageindex+(i-def_pagecount/2);
									params.pageNo = pageNo_5;
									newPaperContents += '<li><a href="#" class="a-mo">'+pageNo_5+'</a></li>';
								}
							}else{
								if(i==(def_pagecount+1)/2){
									newPaperContents += '<li class="active"><a href="#">'+pageindex+'</a></li>';
								}else if(i<(def_pagecount+1)/2){
									var pageNo_6=pageindex-((def_pagecount+1)/2-i);
									params.pageNo = pageNo_6;
									newPaperContents += '<li><a href="#" class="a-mo">'+pageNo_6+'</a></li>';
								}else{
									var pageNo_7=pageindex+(i-(def_pagecount+1)/2);
									params.pageNo = pageNo_7;
									newPaperContents += '<li><a href="#" class="a-mo">'+pageNo_7+'</a></li>';
								}
							}
						}
					}
				}
			}
			if (hasnext) {
				params.pageNo = pageindex + 1;
				newPaperContents += '<li class="next"><a href="#" class="a-mo">下一页</a></li>';
			}else{
				newPaperContents += '<li class="next disabled"><span>下一页</span></li>';
			}
			newPaperContents += '</ul></div></div></div>';
			$('.pager-mo').append(newPaperContents);
			$('a.a-mo').on("click",function(e){
				e.preventDefault();
				toAjax();
			}); 
		}
		//主城
		$(function(){
			$('.form_date_d').datetimepicker(dtpicker_op_d);
			$('.form_date_m').datetimepicker(dtpicker_op_m);
			$('.form_date_y').datetimepicker(dtpicker_op_y);
			initdate();
			$('.btn-click').click(function(e){
				queryflag = 0;
				initParams();
				toAjax();
			});
		});
	</script>
</body>
</html>