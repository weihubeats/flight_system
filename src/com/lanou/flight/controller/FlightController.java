package com.lanou.flight.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanou.flight.domain.Flight;
import com.lanou.flight.service.FlightService;

@Controller
@RequestMapping("/flight")
public class FlightController {

	@Autowired
	private FlightService flightService;

	// 前台查询航班信息
	@RequestMapping("/select")
	public String select(ModelMap map, Flight flight, Integer page) {
		if (null == page) {
			page = 1;
		}
		map.addAttribute("condition", flight);
		map.addAttribute("flights", flightService.selectFlight(flight, page));
		map.addAttribute("page", page);

		return "select";
	}

	// 后台查询航班信息
	@RequestMapping("/selectpage")
	public String selectpage(ModelMap map, Integer page) {
		if (null == page) {
			page = 1;
		}
		map.addAttribute("flights", flightService.selectFlightPage(page));
		map.addAttribute("page", page);
		return "indexc";
	}

	// 添加航班信息
	@RequestMapping("/insert")
	public String insert(Flight flight) {
		flightService.insertFlight(flight);
		return "redirect:selectpage.json";
	}

	// 删除航班信息
	@RequestMapping("delete")
	public String delete(Integer flightid, ModelMap map, Integer page) {
		flightService.deleteFlight(flightid);
		map.addAttribute("page", page);
		return "redirect:selectpage.json";
	}

	// 修改航班信息
	@RequestMapping("update")
	public String update(Flight flight, ModelMap map, Integer page) {
		flightService.updateFlight(flight);
		map.addAttribute("page", page);
		return "redirect:selectpage.json";
	}
}
