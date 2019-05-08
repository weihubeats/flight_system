package com.lanou.flight.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lanou.flight.domain.User;
import com.lanou.flight.mapper.UserMapper;
import com.lanou.flight.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	//注册用户
	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
		
	}
	//登入
	@Override
	public User entry(User user) {
		return userMapper.entry(user);
	}
	
	//添加管理员
	@Override
	public void addUserc(User user) {
		userMapper.addUserc(user);
		
	}
	
	//查看所有用户信息
	@Override
	public List<User> selectUser(Integer page) {

		return userMapper.selectUser((page - 1) * 5);
	}
	
	//查看个人信息
	@Override
	public User selectUser1(Integer userid) {
		return userMapper.selectUser1(userid);
	}
	
	//修改个人信息
	@Override
	public void updatetUser(User user) {
		userMapper.updatetUser(user);
	}
	
	//找回密码
	@Override
	public User findPassword(String usermail) {
		return userMapper.findPassword(usermail);
	}
	
	
	

}
