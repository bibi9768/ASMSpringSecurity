package demo.spring.security.model;

import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Content")
public class content {
	
	@Id
	@Column(name="ContentID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int contentID;
	@Column(name="Title",length = 45)
	private String title;
	
	@Column(name="Brief")
	private String brief;

	@Column(name="Contents")
	private String contents;

	@Column(name="CreataDate")

	private Date createDate; 

	@Column(name="UpdateTime")
	private Time updateTime;

	@Column(name="Sort")
	private String sort;

	@Column(name="AuthorID")
	private int authorID;
	
	
	
	
	public int getContentID() {
		return contentID;
	}
	public void setContentID(int contentID) {
		this.contentID = contentID;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
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
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public int getAuthorID() {
		return authorID;
	}
	public void setAuthorID(int authorID) {
		this.authorID = authorID;
	}
	public content(int contentID, String title, String brief, String contents, Date createDate, Time updateTime,
			String sort, int authorID) {
		super();
		this.contentID = contentID;
		this.title = title;
		this.brief = brief;
		this.contents = contents;
		this.createDate = createDate;
		this.updateTime = updateTime;
		this.sort = sort;
		this.authorID = authorID;
	}
	public content() {
		super();
	}
	

}
