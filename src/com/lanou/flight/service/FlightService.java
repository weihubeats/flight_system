package com.lanou.flight.service;

import java.util.List;

import com.lanou.flight.domain.Flight;

public interface FlightService {
	
	//查询航班信息
	public List<Flight> selectFlight(Flight flight, int page);
	
	//分页查询航班信息
	public List<Flight> selectFlightPage(Integer page);
	
	//添加航班信息
	public void insertFlight(Flight flight);
	
	//删除航班信息
	public void deleteFlight(Integer flightid);
	
	//修改航班信息
	public void updateFlight(Flight Flight);
	
	//航班票数减 一
	public void minusFlight(Integer flightid);
}
