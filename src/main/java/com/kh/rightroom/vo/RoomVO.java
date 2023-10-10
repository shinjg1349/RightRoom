package com.kh.rightroom.vo;

import java.sql.Date;

public class RoomVO {
	private int room_no;
	private int user_no;
	private int t_set_no;
	private String room_name;
	private int room_max_ppl;
	private String room_images;
	private Date room_regi_date;
	
	public int getRoom_no() {
		return room_no;
	}
	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getT_set_no() {
		return t_set_no;
	}
	public void setT_set_no(int t_set_no) {
		this.t_set_no = t_set_no;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public int getRoom_max_ppl() {
		return room_max_ppl;
	}
	public void setRoom_max_ppl(int room_max_ppl) {
		this.room_max_ppl = room_max_ppl;
	}
	public String getRoom_images() {
		return room_images;
	}
	public void setRoom_images(String room_images) {
		this.room_images = room_images;
	}
	public Date getRoom_regi_date() {
		return room_regi_date;
	}
	public void setRoom_regi_date(Date room_regi_date) {
		this.room_regi_date = room_regi_date;
	}
}
