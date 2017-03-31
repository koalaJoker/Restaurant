/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import yy.eat.dto.SmsData;
import yy.eat.service.SmsService;

import javax.servlet.http.HttpServletRequest;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-03-31 10:28
 */
@Controller
public class UserController {
	@Autowired
	private SmsService smsService;

	@RequestMapping("/sendSms")
	public ModelAndView sendSMS(HttpServletRequest request) {
		SmsData sms=new SmsData();
		sms.setPhone(request.getParameter("phone"));
		sms.setCode(request.getParameter("code"));
        smsService.sendSMS(sms);
		return null;
	}

}

