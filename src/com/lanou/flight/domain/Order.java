package com.lanou.flight.domain;

import java.io.Serializable;

public class Order implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer orderid;//订单主键
	private String createDate;//订单时间
	private String username;//用户名
	private Integer flightid;//航班ID
	private Integer orderticket;//订单票数
	private Flight flight;//航班
	private Integer state;
	
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Flight getFlight() {
		return flight;
	}
	public void setFlight(Flight flight) {
		this.flight = flight;
	}
	public Integer getOrderid() {
		return orderid;
	}
	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}
	public String getUserid() {
		return username;
	}
	public void setUserid(String username) {
		this.username = username;
	}
	public Integer getFlightid() {
		return flightid;
	}
	public void setFlightid(Integer flightid) {
		this.flightid = flightid;
	}
	public Integer getOrderticket() {
		return orderticket;
	}
	public void setOrderticket(Integer orderticket) {
		this.orderticket = orderticket;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
	
	
	
	

}
