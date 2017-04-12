/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.service;

import yy.eat.dto.SmsData;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-03-31 11:24
 */
public interface SmsService {
	Boolean sendSMS(SmsData smsData);
}

