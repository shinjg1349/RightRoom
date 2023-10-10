package com.kh.rightroom.vo;

import java.sql.Date;

public class UsedListVO {
	private int my_used_list_no;
	private int m_ppl;
	private String m_name;
	private String m_purpose;
	private Date m_checkin_date;
	private Date m_date;
	private int m_status;
	private Date m_checkout_date;
	private String m_user_id;
	private String m_room_name;
	private String m_comment;
	
	public int getMy_used_list_no() {
		return my_used_list_no;
	}
	public void setMy_used_list_no(int my_used_list_no) {
		this.my_used_list_no = my_used_list_no;
	}
	public int getM_ppl() {
		return m_ppl;
	}
	public void setM_ppl(int m_ppl) {
		this.m_ppl = m_ppl;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_purpose() {
		return m_purpose;
	}
	public void setM_purpose(String m_purpose) {
		this.m_purpose = m_purpose;
	}
	public Date getM_checkin_date() {
		return m_checkin_date;
	}
	public void setM_checkin_date(Date m_checkin_date) {
		this.m_checkin_date = m_checkin_date;
	}
	public Date getM_date() {
		return m_date;
	}
	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}
	public int getM_status() {
		return m_status;
	}
	public void setM_status(int m_status) {
		this.m_status = m_status;
	}
	public Date getM_checkout_date() {
		return m_checkout_date;
	}
	public void setM_checkout_date(Date m_checkout_date) {
		this.m_checkout_date = m_checkout_date;
	}
	public String getM_user_id() {
		return m_user_id;
	}
	public void setM_user_id(String m_user_id) {
		this.m_user_id = m_user_id;
	}
	public String getM_room_name() {
		return m_room_name;
	}
	public void setM_room_name(String m_room_name) {
		this.m_room_name = m_room_name;
	}
	public String getM_comment() {
		return m_comment;
	}
	public void setM_comment(String m_comment) {
		this.m_comment = m_comment;
	}
	
}
