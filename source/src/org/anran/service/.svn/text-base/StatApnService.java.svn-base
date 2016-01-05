package org.anran.service;

import java.util.List;

import org.anran.common.util.PageList;
import org.anran.common.util.PageListUtil;
import org.anran.dao.StatApnDao;
import org.anran.dao.VolumeStatsByDayDao;
import org.anran.dao.VolumeStatsByMonthDao;
import org.anran.dao.VolumeStatsByYearDao;
import org.anran.model.EnterpQueryTool;
import org.anran.model.QueryTool;
import org.anran.model.VolumeStatsByDay;
import org.anran.model.VolumeStatsByMonth;
import org.anran.model.VolumeStatsByYear;
import org.hibernate.Criteria;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StatApnService {
	
	@Autowired
	protected StatApnDao statApnDao;
	
	@Autowired
	protected VolumeStatsByDayDao volumeStatsByDayDao;
	
	@Autowired
	protected VolumeStatsByMonthDao volumeStatsByMonthDao;
	
	@Autowired
	protected VolumeStatsByYearDao volumeStatsByYearDao;
	
	/**
	 * apn pie 失败原因占比分析 报表查询 业务方法
	 * @return
	 */
	public List<Object[]> query(QueryTool qt){
		String whereSql = consWhereSql(qt);
		String sqlStr = "select s.reply_msg as reason,"
						+"count(s.reply_msg) as count,"
			       		+"round((ratio_to_report(count(s.reply_msg)) over())*100,3)||'%' as radio "
			       		+"from request_results s "
			       		+whereSql
			       		+"and s.reply_msg not like '%Authentication success%'"
			       		+"group by s.reply_msg "
			       		+"order by count(s.reply_msg) desc"; 
		return statApnDao.queryByNativedSql(sqlStr);
    }
	
	public List<Object[]> queryFailTopn(QueryTool qt){
		String whereSql = consWhereSql(qt);
		String sqlStr = "select t.calling_id, t.user_name, t.group_name, t.res_count "
						+"from (select s.calling_id,"
						+"s.user_name,"
						+"s.group_name,"
						+"count(s.calling_id) as res_count "
						+"from request_results s "
						+whereSql
						+"and s.result_type <> 1 "
						+"group by s.calling_id, s.user_name, s.group_name "
						+"order by count(s.calling_id) desc) t "
						+"where rownum <= 5";
		return statApnDao.queryByNativedSql(sqlStr);
	}
	
	public Criteria getDeailvolumeStatsDao(String dtv){
		Criteria cri = null;
		if("day".equals(dtv)){
			cri = volumeStatsByDayDao.getCriteria();
		}else if("month".equals(dtv)){
			cri = volumeStatsByMonthDao.getCriteria();
		}else if("year".equals(dtv)){
			cri = volumeStatsByYearDao.getCriteria();
		}
		return cri;
	}
	
	public Criteria getEntFlowListCriteria(EnterpQueryTool q){
		String dateColName = "stats"+q.getDt();
		int pageNo = q.getPageNo();
		int pageSize = q.getPageSize();
		String name = q.getGname();
		Criteria listCriteria = getDeailvolumeStatsDao(q.getDt());
		Criterion criterion = Restrictions.between(dateColName, q.getSd(), q.getEd());
		if(name!=null && !name.trim().isEmpty()){
			criterion = Restrictions.and(criterion, Restrictions.like("groupName", "%"+name+"%"));
		}
		if(criterion != null){
			listCriteria.add(criterion);
		}
        listCriteria.setFirstResult((pageNo-1)*pageSize);  
        listCriteria.setMaxResults(pageSize);
        return listCriteria;
	}
	
	public Criteria getEntFlowCountCriteria(EnterpQueryTool q){
		String dateColName = "stats"+q.getDt();
		String name = q.getGname();
		Criteria countCriteria = getDeailvolumeStatsDao(q.getDt());
		Criterion criterion = Restrictions.between(dateColName, q.getSd(), q.getEd());
		if(name!=null && !name.trim().isEmpty()){
			criterion = Restrictions.and(criterion, Restrictions.like("groupName", "%"+name+"%"));
		}
		if(criterion != null){
			countCriteria.add(criterion);
		}
        countCriteria.setProjection(Projections.rowCount());
        return countCriteria;
	}
	
	//by day
	public PageList<VolumeStatsByDay> queryEnterFlowD(EnterpQueryTool q){
		List<VolumeStatsByDay> items = getEntFlowListCriteria(q).list();
		Criteria countCriteria = getEntFlowCountCriteria(q);
        Integer count=Integer.parseInt(countCriteria.uniqueResult().toString());
    	return PageListUtil.getPageList(count, q.getPageNo(), q.getPageSize(), items);
	}
	
	//by month
	public PageList<VolumeStatsByMonth> queryEnterFlowM(EnterpQueryTool q){
		List<VolumeStatsByMonth> items = getEntFlowListCriteria(q).list();
		Criteria countCriteria = getEntFlowCountCriteria(q);
        Integer count=Integer.parseInt(countCriteria.uniqueResult().toString());
    	return PageListUtil.getPageList(count, q.getPageNo(), q.getPageSize(), items);
	}

	//by year
	public PageList<VolumeStatsByYear> queryEnterFlowY(EnterpQueryTool q){
		List<VolumeStatsByYear> items = getEntFlowListCriteria(q).list();
		Criteria countCriteria = getEntFlowCountCriteria(q);
        Integer count=Integer.parseInt(countCriteria.uniqueResult().toString());
    	return PageListUtil.getPageList(count, q.getPageNo(), q.getPageSize(), items);
	}
	
	/*	private String consEnterWhereSql(EnterpQueryTool q){
			StringBuffer sbf = new StringBuffer();
			sbf.append(" where stats_")
				.append(q.getDt())
				.append(" between ")
				.append(q.getSd())
				.append(" and ")
				.append(q.getEd());
			String gname = q.getGname();
			if(gname!=null && "".equals(gname)){
				sbf.append(" and group_name like '%")
				.append(gname)
				.append("%'");
			}
			return sbf.toString();
		}*/
	
	private String consWhereSql(QueryTool q){
		return " where s.request_time between '" + q.getSd() +"' and '" + q.getEd() +"' ";
	}
}
