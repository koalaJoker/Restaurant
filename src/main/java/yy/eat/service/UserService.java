/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.service;

import yy.eat.dto.User;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-04-05 19:36
 */
public interface UserService {
	void addUser(User user);
	User findUserByPhone(String phone);
}

