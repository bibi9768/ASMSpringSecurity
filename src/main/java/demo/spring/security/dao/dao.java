package demo.spring.security.dao;

import java.util.List;

import demo.spring.security.model.content;

public interface dao {
	
public List<content> listEmployee() ;
	
	public content getEmployee(int ContentID);
	
	public void addEmployee(content ct);

	public void updateEmployee(content ct);
	
	public void deleteEmployee(int ContentID);



}
