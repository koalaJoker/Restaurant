/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import yy.eat.dto.Order;
import yy.eat.mapper.OrderMapper;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-05-02 19:37
 */
@Controller
public class OrderController {
	@Autowired
	private OrderMapper orderMapper;

	@RequestMapping("/getOrders")
	 public ModelAndView getOrders(HttpServletRequest request){
       String strUserId= (String) request.getSession().getAttribute("userId");
       ModelAndView modelAndView=new ModelAndView();
       if (null!=strUserId){//已经登录
       	long intUserId=Long.parseLong(strUserId);
       	List<Order> orders=orderMapper.getOrderByUserId(intUserId);
       	modelAndView.setViewName("");
       	modelAndView.addObject("orders",orders);

	   }else{//未登录状态
		   modelAndView.setViewName("login");
		   modelAndView.addObject("errorTip","尚未登录");
	   }
	 	return modelAndView;
	 }
}

