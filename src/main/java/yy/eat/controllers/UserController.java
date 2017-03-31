/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import yy.eat.service.SmsService;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-03-31 10:28
 */
@Controller @RequestMapping(("/user")) public class UserController {
	@Autowired
	private SmsService smsService;

	@ResponseBody
	public String sendSMS(@RequestBody String phone) {

		return "";
	}

}

