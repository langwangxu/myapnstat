package org.anran.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class StatApnDao{

    @Autowired
    private HibernateTemplate hibernateTemplate;
	
    public Session getSession() {
    	return hibernateTemplate.getSessionFactory().getCurrentSession();
    }
    
	@SuppressWarnings("unchecked")
	public List<Object[]> queryByNativedSql(String sql) {
		return getSession().createSQLQuery(sql).list();
	}
}
