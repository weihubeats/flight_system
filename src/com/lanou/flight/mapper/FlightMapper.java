package com.lanou.flight.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lanou.flight.domain.Flight;

public interface FlightMapper {
	
	//按条件查询航班信息
	public List<Flight> selectFlight(@Param("flight") Flight flight, @Param("page") Integer page);
	
	//分页查询航班信息
	public List<Flight> selectFlightPage(Integer page);
	
	//添加航班信息
	public void insertFlight(Flight Flight);
	
	//删除航班信息
	public void deleteFlight(Integer flightid);
	
	//修改航班信息
	public void updateFlight(Flight Flight);
	
	//航班票数减 一
	public void minusFlight(Integer flightid);
	

}
