/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import yy.eat.dto.Address;
import yy.eat.dto.Order;
import yy.eat.service.*;
import yy.eat.utils.SerialNumberUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
public class OrderController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private OrderDetailService orderDetailService;

	@Autowired
	private CartService cartService;

	@Autowired
	private AddressService addressService;

	@Autowired
	private FoodsService foodsService;

	@RequestMapping("/getOrders")
	 public ModelAndView getOrders(HttpServletRequest request){
       String strUserId= String.valueOf(request.getSession().getAttribute("userId"));
       ModelAndView modelAndView=new ModelAndView();
       if ("null"!=strUserId){
       	    //已经登录
		   long intUserId=Long.parseLong(strUserId);
       	   List<Order> orders=orderService.getOrderByUserId(intUserId);
		   for (Order order:orders) {
			   System.out.println(order.getCreationDate());
		   }
		   modelAndView.setViewName("order");
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
			order.setSerialNum(SerialNumberUtil.Getnum());
			order.setStatus("待发货");
			orderService.insertOrder(order);
			for (int i = 0; i < order.getDetails().size(); i++) {
				order.getDetails().get(i).setOrderId(order.getOrderId());
				orderDetailService.insertOrderDetail(order.getDetails().get(i));
			}
			//删除购物车的选中,通过foodId 和 userId。 销量增加
			for (int i = 0; i < order.getDetails().size(); i++) {
			    cartService.delectOrderCart(Long.parseLong(strUserId),order.getDetails().get(i).getFoodId());
				foodsService.updateSaleVolume(order.getDetails().get(i).getCount(),order.getDetails().get(i).getFoodId());
			}
			//销量增加

			Address a=new Address(); a.setAddressId(order.getAddressId());
			Address address=addressService.selectAddressById(a);
			modelAndView.addObject("address",address);
			modelAndView.addObject("totalPrice",order.getTotalPrice());
			modelAndView.setViewName("success");
		}else{//未登录状态
			modelAndView.setViewName("login");
			modelAndView.addObject("errorTip","尚未登录");
		}
		return modelAndView;
	}
}

