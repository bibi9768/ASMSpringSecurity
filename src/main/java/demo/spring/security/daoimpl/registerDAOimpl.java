package demo.spring.security.daoimpl;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import demo.spring.security.dao.registerDAO;
import demo.spring.security.model.member;


@Repository
@Transactional
public class registerDAOimpl implements registerDAO{

	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	
	public List<member> listMember() {
		// TODO Auto-generated method stub
		
		Session session = this.sessionFactory.getCurrentSession();
		List<member> membertList = session.createQuery("from member").list();
		return membertList;
	}

	public member getMembet(int memberID) {
		// TODO Auto-generated method stub
		return sessionFactory.getCurrentSession().get(member.class, memberID);
	}

	public void addmember(member mb) {
		// TODO Auto-generated method stub
		Session session=this.sessionFactory.getCurrentSession();
		
		member mber=new member();
		mber.setUsername(mb.getUsername());
		mber.setPassword(mb.getPassword());
		mber.setEmail(mb.getEmail());
		
		mber.setRoleID(2);
		
		Date date=new Date();
		mber.setCreateDate(date);
		
		session.save(mber);

		
	}
	

}
