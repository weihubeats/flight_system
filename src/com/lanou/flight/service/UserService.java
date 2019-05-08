package com.lanou.flight.service;

import java.util.List;

import com.lanou.flight.domain.User;

public interface UserService {
	
	//注册
	public void addUser(User user);
	
	//登入
	public User entry(User user);
	
	//添加管理员
	public void addUserc(User user);
	
	//查看所有用户
	public List<User> selectUser(Integer page);
	
	//查看个人信息
	public User selectUser1(Integer userid);
	
	//修改个人信息
	public void updatetUser(User user);
	
	//找回密码
	public User findPassword(String usermail);

}
