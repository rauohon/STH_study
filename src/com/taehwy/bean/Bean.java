/**
 * 
 */
package com.taehwy.bean;

import java.util.Date;

import org.apache.ibatis.type.Alias;

/**
 * @클래스명 : Bean
 * @작성자 : 신태휘
 * @작성일 : 2017. 9. 18.
 * @설명 : 
 * @수정이력 - 수정일, 수정자, 수정내용
 */
@Alias("bean")
public class Bean {
	
	private String mbid;
	private String mbpwd;
	private String mbspwd;
	private String mbname;
	private String mbnick;
	private Date date;
	private String dates;
	private String lvCode;
	private String lvName;
	private String acCode;
	private String acName;
	private String page;
	private String info;
	private String comment;
	
	
	public String getLvName() {
		return lvName;
	}
	public void setLvName(String lvName) {
		this.lvName = lvName;
	}
	public String getAcName() {
		return acName;
	}
	public void setAcName(String acName) {
		this.acName = acName;
	}
	public String getDates() {
		return dates;
	}
	public void setDates(String dates) {
		this.dates = dates;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getMbid() {
		return mbid;
	}
	public void setMbid(String mbid) {
		this.mbid = mbid;
	}
	public String getMbpwd() {
		return mbpwd;
	}
	public void setMbpwd(String mbpwd) {
		this.mbpwd = mbpwd;
	}
	public String getMbname() {
		return mbname;
	}
	public void setMbname(String mbname) {
		this.mbname = mbname;
	}
	public String getMbnick() {
		return mbnick;
	}
	public void setMbnick(String mbnick) {
		this.mbnick = mbnick;
	}
	public String getLvCode() {
		return lvCode;
	}
	public void setLvCode(String lvCode) {
		this.lvCode = lvCode;
	}
	public String getAcCode() {
		return acCode;
	}
	public void setAcCode(String acCode) {
		this.acCode = acCode;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getMbspwd() {
		return mbspwd;
	}
	public void setMbspwd(String mbspwd) {
		this.mbspwd = mbspwd;
	}
		
	
	
	
}
