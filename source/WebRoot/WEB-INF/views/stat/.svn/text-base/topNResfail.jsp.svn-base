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
			<div class="report-heading text-primary">认证失败TOP N用户分析</div>
			<span class="report-s-muted">按照主叫号码统计认证失败次数TOP N的记录</span>
		</div>
		<div class="well">
			<ul class="nav nav-tabs" role="tablist" id="tab-list">
				<li class="active"><a href="#d" role="tab" data-toggle="tab">按天</a></li>
				<li><a href="#m" role="tab" data-toggle="tab">按月</a></li>
				<li><a href="#y" role="tab" data-toggle="tab">按年</a></li>
			</ul>
			<div class="row">
				<div class="col-sm-7">
					<div class="tab-content my-tab-content">
						<div class="tab-pane active" id="d">
							<form class="form-inline">
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
							</form>
						</div>
						<div class="tab-pane" id="m">
							<form class="form-inline">
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
							</form>
						</div>
						<div class="tab-pane" id="y">
							<form class="form-inline">
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
							</form>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<form class="form-inline form-mo">
						<a type="button" class="btn btn-primary pull-right btn-click"><i class="fa fa-search fa-fw"></i>查询报表</a>
					</form>
				</div>
			</div>
		</div>
		
		<!--end 参数区域-->
		<!--报表展示区域 start-->
		<div class="panel panel-default panel-mo">
			<div class="panel-heading">
				认证失败TOPN用户分析列表
			</div>
			<div class="panel-body">
				<table class="table table-mo table-bordered table-hover">
					<thead>
						<tr class="tr-mo">
							<th>序号</th>
							<th>用户名</th>
							<th>主叫号码</th>
							<th>企业名称</th>
							<th>失败次数</th>
						</tr>
					</thead>
					<tbody>
						<tr class="non_show_tr warning"><td colspan="5" class="non_show_td">无查询记录</td></tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--end 报表展示区域-->
	</div>
	<%@ include file="../common/importApnStatJs.jsp"%>
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
			pickerPosition: "bottom-left"
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
		$(function(){
			$('.form_date_d').datetimepicker(dtpicker_op_d);
			$('.form_date_m').datetimepicker(dtpicker_op_m);
			$('.form_date_y').datetimepicker(dtpicker_op_y);
			initdate();
			$('.btn-click').click(function(e){
				toAjax();
			});
		});
		function dealPostData(){
			var dtype = $('#tab-list>li.active a').attr('href').substring(1,2);
			var sdv =  $('#dtp_input_'+dtype+'1').val();
			var edv =  $('#dtp_input_'+dtype+'2').val();
			if(sdv==''||edv==''){
				alert('开始或结束日期不能为空');
				return '';
			}else{
				return '{"dt":"'+ dtype +'","sd":"'+ sdv +'","ed":"'+edv+'"}';
			}
		}
		function freshMsg(){
			$('table.table-mo tbody').remove();
			var msg_show = '<tr class="non_show_tr warning"><td colspan="5" class="non_show_td"><i class="fa fa-3x fa-blue fa-spinner fa-pulse"></i></td></tr>';
			$('table.table-mo').append('<tbody>'+msg_show+'</tbody>');
		}
		function toAjax(){
			var postdata = dealPostData();
			if(postdata==''){
				return false;
			}else{
				$.ajax({
					type:'POST',
					contentType:'application/json',
					url:'<%=request.getContextPath()%>/stat/failtopnajax',
					processData:false,
					dataType:'json',
					data:postdata,
					beforeSend:function(){
						freshMsg();
					},
					success:function(sdata){
						appendTbodyContents(sdata);
					},
					error:function(){
						alert('fail');
					}
				});
			}
		}
		function appendTbodyContents(d){
			var tr_c = '';
			if(d.length>0){
				$.each(d,function(i,di){
					var td_c='<td>'+(i+1)+'</td>';
					$.each(di,function(j,item){
						td_c += '<td>'+item+'</td>';
					});
					tr_c += '<tr>'+td_c+'</tr>';
				});
			}else{
				tr_c += '<tr class="non_show_tr warning"><td colspan="5" class="non_show_td">无查询记录</td></tr>';
			}
			$('table.table-mo tbody').remove();
			$('table.table-mo').append('<tbody>'+tr_c+'</tbody>');
		}
	</script>
</body>
</html>