package com.lanou.flight.mapper;

import java.util.List;

import com.lanou.flight.domain.Order;

public interface OrderMapper {
	
	//添加订单
	public void addOrder(Order order);
	
	//查询个人订单
	public List<Order> selectOrder(String username);
	
	//查询订单是否存在
	public Order selectOrder1(Order order);
	
	//删除订单
	public void deleteOrder(String orderid);
	
	//管理员查询所有订单
	public List<Order> selectOrderc(Integer page);
	
	//支付
	public void updateOrder(String orderid);
	
	//订单加一
	public void addOrder1(Order order);
}
