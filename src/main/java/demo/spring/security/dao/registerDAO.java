package demo.spring.security.dao;

import java.util.List;

import demo.spring.security.model.member;


public interface registerDAO {
	
public List<member> listMember() ;
	
	public member getMembet(int memberID);
	
	public void addmember(member mb);

}
