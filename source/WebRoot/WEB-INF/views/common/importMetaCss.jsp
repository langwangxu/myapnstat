	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge;IE11,IE=9;IE=8;IE=7;chrome=1">
    <meta name="renderer" content="webkit">
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<link href="<c:url value='/plugins/bootstrap3.4/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" media="all"/>
	<link href="<c:url value='/plugins/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet" type="text/css" media="all"/>
	<link href="<c:url value='/plugins/bootstrap-datetimepicker-2.0/css/bootstrap-datetimepicker.css'/>" rel="stylesheet" media="all">
	<link href="<c:url value='/css/momocss/pageheader.css'/>" rel="stylesheet" type="text/css" media="all"/>
	<style>
		body{
			color: #222222;
		}
		.container-fluid{
			padding-right:2px;
			padding-left:2px;
		}
		.well{
			background-color:#fff;
			margin-bottom:2px;
			padding:10px;
		}
		.panel-heading{
			padding: 10px;
		}
		#report-header{
			margin-top:2px;
			/*margin-bottom:5px;*/
		}
		.report-s-muted{
		    color: #555;
		    margin-top: 5px;
		    display: inline-block;
		}
		/*.report-heading{
		    border-radius: 4px;
		    padding: 5px 5px;
		    width: 254px;
		}*/
		#report-show{
			margin:0;
			padding:0;
		}
		#sd_bak,#ed_bak{
			background-color:#fff;
		}
		#legendContainer{
			padding-top:100px;
		}
		#legendContainer ul li{
			margin-top:10px;
			font-size:12px;
		}
		.my-tab-content{
			margin-top:10px;
		}
		.panel-mo{
			margin-bottom:0px;
		}
		.non-show-div{
			text-align:center;
			font-size:14px;
			font-weight:bold;
			height:100px;
			line-height:100px;
		}
		.non_show_tr{
			
		}
		.non_show_td{
			text-align:center;
			font-size:14px;
			font-weight:bold;
		}
		.form-mo{
			margin-top:10px;
		}
		.pager-info-mo{
			margin:18px;
		}
		.tr-mo{
			color:#fff;
			background-color:#337ab7;
			border-color:#337ab7;
		}
		th{
			text-align:center;
		}
		.show-dought{
			display:none;
		}
		#legendContainer ul{
			list-style:none;
		}
		#legendContainer li {
			display: block;
			padding-left: 5px;
			position: relative;
			margin-bottom: 4px;
			border-radius: 5px;
			padding: 2px 8px 2px 60px;
			font-size: 14px;
			cursor: default;
			-webkit-transition: background-color 200ms ease-in-out;
			-moz-transition: background-color 200ms ease-in-out;
			-o-transition: background-color 200ms ease-in-out;
			transition: background-color 200ms ease-in-out;
		}
		#legendContainer li:hover {
		  	background-color: #fafafa;
		}
		#legendContainer li span {
			display: block;
			position: absolute;
			left: 0;
			top: 0;
			width: 50px;
			height: 100%;
			border-radius: 5px;
		}
		.pagination{
			margin:20px 16px;
		}
	</style>