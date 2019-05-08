package com.lanou.flight.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanou.flight.domain.Flight;
import com.lanou.flight.mapper.FlightMapper;
import com.lanou.flight.service.FlightService;

@Service("flightService")
public class FlightServiceImpl implements FlightService{
	
	@Autowired
	private FlightMapper flightMapper;
	
	//查询航班信息
	@Override
	public List<Flight> selectFlight(Flight flight, int page) {
		return flightMapper.selectFlight(flight,(page - 1) * 5);
	}
	
	//分页查询航班信息
	@Override
	public List<Flight> selectFlightPage(Integer page) {
		return flightMapper.selectFlightPage((page - 1) * 5);
	}
	
	//添加航班信息
	@Override
	public void insertFlight(Flight flight) {
		flightMapper.insertFlight(flight);
		
	}
	
	//删除航班信息
	@Override
	public void deleteFlight(Integer flightid) {
		flightMapper.deleteFlight(flightid);
		
		
	}
	
	//修改航班信息
	@Override
	public void updateFlight(Flight Flight) {
		flightMapper.updateFlight(Flight);
		
	}
	
	//航班票数减一
	@Override
	public void minusFlight(Integer flightid) {
		flightMapper.minusFlight(flightid);
		
	}

}
