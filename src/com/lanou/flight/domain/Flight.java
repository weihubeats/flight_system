package com.lanou.flight.domain;

import java.io.Serializable;

import org.springframework.stereotype.Controller;

@Controller
public class Flight implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer flightid;//航班ID
	private String flighname;//航空公司
	private String startDate;//出发日期
	private String startTime;//起飞时间
	private String arrivalTime;//到达时间
	private String startCity;//起飞城市
	private String arrivalCity;//到达城市
	private Double price;//价格
	private String punctuality;//准点率
	private Integer ticket;//剩余票数
	
	
	public Integer getFlightid() {
		return flightid;
	}
	public void setFlightid(Integer flightid) {
		this.flightid = flightid;
	}
	public String getFlighname() {
		return flighname;
	}
	public void setFlighname(String flighname) {
		this.flighname = flighname;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getArrivalTime() {
		return arrivalTime;
	}
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	public String getStartCity() {
		return startCity;
	}
	public void setStartCity(String startCity) {
		this.startCity = startCity;
	}
	public String getArrivalCity() {
		return arrivalCity;
	}
	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getPunctuality() {
		return punctuality;
	}
	public void setPunctuality(String punctuality) {
		this.punctuality = punctuality;
	}
	public Integer getTicket() {
		return ticket;
	}
	public void setTicket(Integer ticket) {
		this.ticket = ticket;
	}
	
	
	
	
	
	
	

}
