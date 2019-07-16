package demo.spring.security.daoimpl;

import java.sql.Time;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import demo.spring.security.dao.dao;
import demo.spring.security.model.User;
import demo.spring.security.model.content;


@Repository
@Transactional
public class contentDaoimpl implements dao {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public List<content> listEmployee() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<content> contentList = session.createQuery("from content").list();
		return contentList;
	}

	public content getEmployee(int ContentID) {
		// TODO Auto-generated method stub
		return (content)sessionFactory.getCurrentSession().get(content.class, ContentID);
	}

	public void addEmployee(content ct) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		
		content ctt=new content();
		User user=new User();
		//Query query= session.createQuery("from content c, where c.authorID = :authorID"); //HQL
		//query.setParameter("authorID", user.getId()); // set contentID
		//ctt = (content)query.list().get(0); //get data 
		ctt.setTitle(ct.getTitle());
		ctt.setContents(ct.getContents());
		ctt.setBrief(ct.getBrief());
		
		//int id=Integer.parseInt(user.getId().toString());
		ctt.setAuthorID(1);
		
		Date date=new Date();
		ctt.setCreateDate(date);
		Time time=new Time(date.getHours(),date.getMinutes(),date.getSeconds());
		ctt.setUpdateTime(time);
		session.save(ctt);
		
	}
	/**
	 * @param content
	 * 
	 * Su dung HQL lay du lieu cu cua doi tuong sau do cap nhat lai cac thong tin moi
	 * 
	 */
	public void updateEmployee(content ct) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		content ctt = new content();
		Query query= session.createQuery("from content c where c.contentID = :contentID"); //HQL
		query.setParameter("contentID", ct.getContentID()); // set contentID
		ctt = (content)query.list().get(0); //get data 
		ctt.setBrief(ct.getBrief());
		ctt.setContents(ct.getContents());
		ctt.setTitle(ct.getTitle());
		
		//get ngay gio hien tai
		Date date = new Date();
		ctt.setCreateDate(date);
		Time sqlTime = new Time(date.getHours(),date.getMinutes(),date.getSeconds()); //get gio tu ngay hien tai
		ctt.setUpdateTime(sqlTime);
		session.update(ctt);
		
	}

	public void deleteEmployee(int ContentID) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		content uv=(content)sessionFactory.getCurrentSession().load(content.class, ContentID);
		session.delete(uv);
	}

	
	

}
