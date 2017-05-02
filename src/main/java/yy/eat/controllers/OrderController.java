/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import yy.eat.dto.Order;
import yy.eat.mapper.OrderMapper;
import yy.eat.service.OrderDetailService;
import yy.eat.service.OrderService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.UUID;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-05-02 19:37
 */
@RestController
public class OrderController {
	@Autowired
	private OrderMapper orderMapper;

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderDetailService orderDetailService;


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

	@RequestMapping("/submitOrder")
	public ModelAndView getOrdersa(HttpServletRequest request,Order order){
		String strUserId= String.valueOf( request.getSession().getAttribute("userId"));
		ModelAndView modelAndView=new ModelAndView();
		if ("null"!=strUserId) {//已经登录
			order.setUserId(Long.parseLong(strUserId));
			UUID uuid = UUID.randomUUID();
			order.setSerialNum(uuid.toString());
			order.setStatus("待发货");
			Long orderId = orderService.insertOrder(order);
			for (int i = 0; i < order.getDetails().size(); i++) {
				order.getDetails().get(i).setOrderId(orderId);
				orderDetailService.insertOrderDetail(order.getDetails().get(i));
			}
//			        //删除购物车的选中
//        for(int i=0;i<str.length;i++){
//            Cart cart=new Cart();
//            cart.setCartId(Long.parseLong(str[i]));
//            cartService.deleteCart(cart);
//        }
			modelAndView.setViewName("index");
		}else{//未登录状态
			modelAndView.setViewName("login");
			modelAndView.addObject("errorTip","尚未登录");
		}

		return modelAndView;
	}
}

