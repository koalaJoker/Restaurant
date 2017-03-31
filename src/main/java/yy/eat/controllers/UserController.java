/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import yy.eat.dto.SmsData;
import yy.eat.service.SmsService;

import javax.servlet.http.HttpServletRequest;
import java.util.Random;

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
	public void sendSMS(HttpServletRequest request) {
		SmsData sms=new SmsData();
		int radomInt = new Random().nextInt(999999);
		sms.setPhone(request.getParameter("phone"));
		sms.setCode(String.valueOf(radomInt));
        smsService.sendSMS(sms);
	}

}

