package com.lanou.flight.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lanou.flight.Util.Email;
import com.lanou.flight.domain.User;
import com.lanou.flight.service.UserService;

@Controller
@RequestMapping("user")
public class UserController extends Email{
	
	@Autowired
	private UserService userService;
	
	//注册管理员
	@RequestMapping("addAdmin")
	public String addAdmin(User user, HttpSession session) {
		userService.addUserc(user);
		session.setAttribute("sucess", "添加管理员成功！！");
		return "redirect:../add_admin.jsp";
	}
	
	//注册普通用户
		@RequestMapping("addUser")
		public String addUser(User user, HttpSession session) {
			System.out.println("aaa" + user.getUserpassword());
			userService.addUser(user);
			session.setAttribute("sucess", "注册成功！！");
			return "redirect:../add_admin.jsp";
		}
	
	//登入
	@RequestMapping("entry")
	public String entry(User user, HttpSession session) {
		if (null != userService.entry(user)) {
			if (userService.entry(user).getJurisdiction() == 1) {
				//普通用户
				session.setAttribute("user", userService.entry(user));
				return "redirect:../index.jsp";
			}
			else {
				//管理用户
				session.setAttribute("user", userService.entry(user));
				System.out.println("111");
				return "redirect:../flight/selectpage.json";
			}
		}	
		session.setAttribute("error", "账号或密码错误，请重新输入！！");
			return "redirect:../entry.jsp";	
	}
	
	
	
	
	//查询所有用户信息
	@RequestMapping("/selectUser")
	public String selectUser(ModelMap map, Integer page) {
		if (null == page) {
			page= 1;
		}
		map.addAttribute("users",userService.selectUser(page));
		map.addAttribute("page", page);
		return "selectUser";
	}
	
	// 查询个人信息
	@RequestMapping("/selectUser1")
	public String selectUser1(User user, HttpSession session, ModelMap map) {
		user = (User)session.getAttribute("user");
		user = userService.selectUser1(user.getUserid());
		session.setAttribute("user", user);
		map.addAttribute("hint", "11");
		return "redirect:../personal.jsp";
	}
	
	//修改个人信息
	@RequestMapping("/update")
	public String update(User user, HttpSession session) {
		userService.updatetUser(user);
		session.setAttribute("sucess", "修改成功！");
		
		return "redirect:selectUser1.json";
	}
	
	//找回密码
	@RequestMapping("/findPassword")
	public String findPassword(User user, HttpSession session) throws Exception {
		user = userService.findPassword(user.getUsermail());
		if (null != user) {
			sendMail(user.getUsermail());
			session.setAttribute("user", user);
			return "redirect:https://mail.qq.com/cgi-bin/loginpage";
		}
		session.setAttribute("erro", "对不起您输入的邮箱不存在，请重新输入！");
		return "redirect:../find_password.jsp";
	}
}
