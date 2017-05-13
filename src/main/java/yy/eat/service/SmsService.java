/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.service;

import yy.eat.dto.SmsData;

public interface SmsService {
	Boolean sendSMS(SmsData smsData);
}

