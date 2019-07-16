package demo.spring.security.daoimpl;


import demo.spring.security.dao.loginDAO;
import demo.spring.security.model.member;
import demo.spring.security.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class loginDAOImpl implements loginDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public boolean checklogin(String user, String pass) {
        Session session = this.sessionFactory.getCurrentSession();
        Query query= (Query) session.createQuery("from member o where o.username=:user and o.password=:pass");
        query.setParameter("user",user);
        query.setParameter("pass",pass);
        List list =query.list();
        if ((list != null) && (list.size() > 0)) {
            return true;
        }
        return false;
    }

    public int getId(String user) {
        member mber=new member();
        Session session = this.sessionFactory.getCurrentSession();
        Query query= (Query) session.createQuery("from member o where o.username=:user");
        query.setParameter("user",user);
        List<member> list =query.list();
        if ((list != null) && (list.size() > 0)) {
            return list.get(list.size()-1).getMemberID();
        }
        return 0;
    }

    public boolean isadmin(String user) {
        member mber=new member();
        Session session = this.sessionFactory.getCurrentSession();
        Query query= (Query) session.createQuery("from member o where o.username=:user");
        query.setParameter("user",user);
        List<member> list =query.list();
        if ((list != null) && (list.size() > 0) && list.get(list.size()-1).getRoleID()==1) {
            return true;
        }
        return false;

    }
}
