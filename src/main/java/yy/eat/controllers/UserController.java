/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import yy.eat.dto.SmsData;
import yy.eat.dto.User;
import yy.eat.service.SmsService;
import yy.eat.service.UserService;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Random;


@Controller
public class UserController {
	@Autowired
	private SmsService smsService;
    @Autowired
	private UserService userService;
	@RequestMapping("/sendSms")
	@ResponseBody
	public String sendSMS(HttpServletRequest request) {
		SmsData sms=new SmsData();
		int radomInt = new Random().nextInt(999999);
		sms.setPhone(request.getParameter("phone"));
		sms.setCode(String.valueOf(radomInt));
		Boolean falg=smsService.sendSMS(sms);
		if (falg)return sms.getCode();
       return Boolean.FALSE.toString();
	}
    @RequestMapping("/regiest")
	@ResponseBody
	public ModelAndView regiestUser(User user){
		userService.addUser(user);
		ModelAndView modelAndView =new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}
	@RequestMapping("/login")
	@ResponseBody
	public ModelAndView loginUser(User user,HttpSession httpSession,HttpServletRequest request,
								  HttpServletResponse response){
		ModelAndView modelAndView=new ModelAndView();
		User findUser=userService.findUserByPhone(user.getPhone());
		if (null==findUser){
			modelAndView.setViewName("login");
			modelAndView.addObject("errorTip","该用户不存在!");
			return modelAndView;
		}
		if (findUser.getPassword().equals(user.getPassword())){
			//将登陆信息存入session中
			httpSession.setAttribute("userId",findUser.getId());
			httpSession.setAttribute("userName",findUser.getName());
			modelAndView.setViewName("index");
			//将用户信息存入cookie
			if (null!=request.getParameter("remberme")){
				Cookie cookie =new Cookie("phone#password",findUser.getPhone()
						+","+findUser.getPassword());
				cookie.setMaxAge(60 * 60 * 24 * 30);
				response.addCookie(cookie);
			}
			return modelAndView;
		}else {
			modelAndView.setViewName("login");
			modelAndView.addObject("errorTip","用户名或密码错误!");
			modelAndView.addObject("phone",user.getPhone());
			return modelAndView;
		}
	}

	/**
	 * 退出登录
	 * @return
	 */
	@RequestMapping("/logOut")
	@ResponseBody
	public ModelAndView logOut(HttpServletRequest request,HttpServletResponse response){
		request.getSession().removeAttribute("userId");
		request.getSession().removeAttribute("userName");
		ModelAndView modelAndView =new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}
}

