package demo.spring.security.model;


import java.sql.Time;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "Member")
public class member {
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MemberID")
	private int memberID;
	
	
	@Column(name = "Firstname")
	private String fistname;
	
	@Column(name = "Lastname")
	private String lastname;
	
	@Column(name = "Username")
	private String username;
	
	@Column(name = "Password")
	private String password;
	
	@Column(name = "Phone")
	private String phone;
	
	@Column(name = "Description")
	private String description;
	
	@Column(name = "CreatedDate")
	private Date createDate;
	
	@Column(name = "UpdateTime")
	private Time updateTime;

	
	
	/*
	 * @JoinColumn(name = "RoleID", referencedColumnName = "RoleID")
	 * 
	 * @ManyToOne(targetEntity = roleContent.class)
	 */
	@Column(name = "RoleID")
	private int roleID;
	
	@Column(name = "Email")
	private String email;
	
	
	
	public int getMemberID() {
		return memberID;
	}
	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}
	public String getFistname() {
		return fistname;
	}
	public void setFistname(String fistname) {
		this.fistname = fistname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Time getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Time updateTime) {
		this.updateTime = updateTime;
	}
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public member(int memberID, String fistname, String lastname, String username, String password, String phone,
			String description, Date createDate, Time updateTime, int roleID, String email) {
		super();
		this.memberID = memberID;
		this.fistname = fistname;
		this.lastname = lastname;
		this.username = username;
		this.password = password;
		this.phone = phone;
		this.description = description;
		this.createDate = createDate;
		this.updateTime = updateTime;
		this.roleID = roleID;
		this.email = email;
	}
	public member(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public member() {
		super();
	}
	
	

}
