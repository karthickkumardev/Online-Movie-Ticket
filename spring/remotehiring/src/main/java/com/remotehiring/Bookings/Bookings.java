package com.remotehiring.Bookings;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class Bookings {
	private Integer bookingid;
	private String email;
	private String vehicle_type;
	private String  vehicle_no;
	private String date;
	private String time;
	private Integer duration;
	private String cost = "0";
	private Integer locationid;
	private String slotid;
	private Integer paid = 0;
	private String location_name = "";
	
	public Bookings() {

	}
	public Bookings(Integer bookingid, String email, String vehicle_type, String vehicle_no, String date, String time,
			Integer duration, String cost, Integer locationid, String slotid, Integer paid,String location_name) {
		super();
		this.bookingid = bookingid;
		this.email = email;
		this.vehicle_type = vehicle_type;
		this.vehicle_no = vehicle_no;
		this.date = date;
		this.time = time;
		this.duration = duration;
		this.cost = cost;
		this.locationid = locationid;
		this.slotid = slotid;
		this.paid = paid;
		this.location_name = location_name;
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getBookingid() {
		return bookingid;
	}
	public void setBookingid(Integer bookingid) {
		this.bookingid = bookingid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	/*public String getSlotno() {
		return slotno;
	}
	public void setSlotno(String slotno) {
		this.slotno = slotno;
	}*/
	public String getLocation_name() {
		return location_name;
	}
	public void setLocation_name(String location_name) {
		this.location_name = location_name;
	}

	public String getVehicle_type() {
		return vehicle_type;
	}
	public void setVehicle_type(String vehicle_type) {
		this.vehicle_type = vehicle_type;
	}
	public String getVehicle_no() {
		return vehicle_no;
	}
	public void setVehicle_no(String vehicle_no) {
		this.vehicle_no = vehicle_no;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Integer getDuration() {
		return duration;
	}
	public void setDuration(Integer duration) {
		this.duration = duration;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public Integer getLocationid() {
		return locationid;
	}
	public void setLocationid(Integer locationid) {
		this.locationid = locationid;
	}
	public Integer getPaid() {
		return paid;
	}
	public void setPaid(Integer paid) {
		this.paid = paid;
	}
	public String getSlotid() {
		return slotid;
	}
	public void setSlotid(String slotid) {
		this.slotid = slotid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

	
}
