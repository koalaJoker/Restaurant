/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.SmsData;
import yy.eat.mapper.UserMapper;
import yy.eat.service.SmsService;
import yy.eat.utils.RestTest;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-03-31 16:29
 */
@Service("smsService")
public class SmsServiceImpl implements SmsService{
   	@Autowired
	private UserMapper userMapper;
	final  String accountSid = "ef32dde9c4051406132b63fd136b4a7e";
	final  String authToken = "ad7c5ef5055aac24187444cd12e01398";
	final  String appId = "9b182847839749ef8da6fc0070e92e9f";
	final  String templateId = "28502";
	@Override
	public void sendSMS(SmsData smsData) {
		if (null==userMapper.findUserByPhone(smsData.getPhone())) {
			RestTest.testTemplateSMS(true, accountSid, authToken, appId, templateId, smsData.getPhone(),smsData.getCode());
		}
	}
}

