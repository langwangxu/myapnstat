package org.anran.web;

import java.util.List;

import org.anran.common.util.PageList;
import org.anran.model.EnterpQueryTool;
import org.anran.model.QueryTool;
import org.anran.model.RespEntityPForAjax;
import org.anran.model.TestReport;
import org.anran.model.VolumeStatsByDay;
import org.anran.model.VolumeStatsByMonth;
import org.anran.model.VolumeStatsByYear;
import org.anran.service.StatApnService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/stat")
public class StatApnController extends BaseController {
	
	@Autowired
	private StatApnService statApnService;

	//指向失败原因占比统计页面
	@RequestMapping(value="/percentResfail", method = RequestMethod.GET)
	public String showResFailPie(){
		return "stat/percentResFail";
	}
	
	//指向失败原因TopN统计页面
	@RequestMapping(value="/topNResfail", method = RequestMethod.GET)
	public String showResFailTopN(){
		return "stat/topNResfail";
	}
	
	//指向企业周期流量查询页面
	@RequestMapping(value="/epriseFlowQuery", method = RequestMethod.GET)
	public String showEprFlowQueList(){
		return "stat/epriseFlowQuery";
	}
	
	@RequestMapping(value="/prfajax", method = {RequestMethod.POST})
	public @ResponseBody List<Object[]> pieAjaxData(@RequestBody QueryTool qt){
		qt.formatDate();
		List<Object[]> queryResult = statApnService.query(qt);
	    return queryResult;
	}
	
	@RequestMapping(value="/failtopnajax", method = {RequestMethod.POST})
	public @ResponseBody List<Object[]> topnfAjaxData(@RequestBody QueryTool qt){
		qt.formatDate();
		List<Object[]> queryResult = statApnService.queryFailTopn(qt);
	    return queryResult;
	}
	
	/*	@RequestMapping(value="/eprisefqajax", method = {RequestMethod.POST})
		public @ResponseBody List<Object[]> efqAjaxData(@RequestBody EnterpQueryTool qt){
			List<Object[]> queryResult = statApnService.queryEnterFlow(qt);
		    return queryResult;
		}*/
	
	@RequestMapping(value="/eprisefqday", method = {RequestMethod.POST})
	public @ResponseBody PageList<VolumeStatsByDay> efqAjaxDataD(@RequestBody EnterpQueryTool qt){
		return statApnService.queryEnterFlowD(qt);
	}
	
	@RequestMapping(value="/eprisefqmonth", method = {RequestMethod.POST})
	public @ResponseBody PageList<VolumeStatsByMonth> efqAjaxDataM(@RequestBody EnterpQueryTool qt){
		return statApnService.queryEnterFlowM(qt);
	}
	
	@RequestMapping(value="/eprisefqyear", method = {RequestMethod.POST})
	public @ResponseBody PageList<VolumeStatsByYear> efqAjaxDataY(@RequestBody EnterpQueryTool qt){
		return statApnService.queryEnterFlowY(qt);
	}
}
