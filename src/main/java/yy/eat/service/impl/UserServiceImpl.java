/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import yy.eat.dto.User;
import yy.eat.mapper.UserMapper;
import yy.eat.service.UserService;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-04-05 19:37
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}

	@Override
	public User findUserByPhone(String phone) {
		return userMapper.findUserByPhone(phone);
	}
}

