package com.lanou.flight.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanou.flight.domain.Order;
import com.lanou.flight.domain.User;
import com.lanou.flight.service.FlightService;
import com.lanou.flight.service.OrderService;

@Controller
@Transactional
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private FlightService flightService;

	//添加订单
	@RequestMapping("/addorder")
	public String addOrder(Order order) {
		if (null == orderService.selectOrder1(order)) {
			flightService.minusFlight(order.getFlightid());
			orderService.addOrder(order);
		} else {
			flightService.minusFlight(order.getFlightid());
			order = orderService.selectOrder1(order);
			orderService.addOrder1(order);
		}
		return "redirect:selectorder.json";
	}
	
	//查询个人订单
	@RequestMapping("/selectorder")
	public String selectOrder(User user, ModelMap map,HttpSession session, Integer page) {
		user = (User)session.getAttribute("user");
		if (null == page) {
			page = 1;
		}
		map.addAttribute("page", page);
		map.addAttribute("user",user);
		map.addAttribute("orders", orderService.selectOrder(user.getUsername()));	
		return "order";
	}
	
	//删除订单
	@RequestMapping("/deleteorder")
	public String deleteOrder(String orderid, HttpSession session) {
		orderService.deleteOrder(orderid);
		session.setAttribute("sucess", "退订成功！！");
		return "redirect:selectorder.json";
	}
	
	//支付
	@RequestMapping("/updateorder")
	public String updateOrder(String orderid, HttpSession session) {
		orderService.updateOrder(orderid);
		session.setAttribute("sucess", "支付成功！！");
		return "redirect:selectorder.json";
		}
	
	//管理员查询所有订单
	@RequestMapping("/selectorderC")
	public String selectOrderC(ModelMap map,Integer page) {
		if (null == page) {
			page = 1;
		}
		map.addAttribute("page", page);
		map.addAttribute("orders",orderService.selectOrderC(page));	
		return "orderC";
	}
}
