package com.lanou.flight.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanou.flight.domain.Order;
import com.lanou.flight.mapper.OrderMapper;
import com.lanou.flight.service.OrderService;
import com.sun.org.apache.xpath.internal.operations.Bool;

@Service("orderService")
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;
	
	//添加订单
	@Override
	public void addOrder(Order order) { 
		orderMapper.addOrder(order);
		
	}
	
	//订单加一
	@Override
	public void addOrder1(Order order) {
		orderMapper.addOrder1(order);
			
		}
	
	//查询订单是否存在
	@Override
	public Order selectOrder1(Order order) {
			// TODO Auto-generated method stub
		return orderMapper.selectOrder1(order);
		}
	
	//查询订单
	@Override
	public List<Order> selectOrder(String username) {
		return orderMapper.selectOrder(username);
	}
	
	//删除订单
	@Override
	public void deleteOrder(String orderid) {
		 orderMapper.deleteOrder(orderid);
		
	}
	
	//管理员查询所有订单
	@Override
	public List<Order> selectOrderC(Integer page) {
		return orderMapper.selectOrderc((page - 1) * 5);
	}

	//支付
	@Override
	public void updateOrder(String orderid) {
		orderMapper.updateOrder(orderid);
		
	}
	
	
	
	

}
