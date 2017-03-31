/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.mapper;

import yy.eat.dto.User;

/**
 * @author LinKaiLong
 * @Title:
 * @Description: (描述此类的功能)
 * @date 2017-03-31 20:27
 */
public interface UserMapper {
	User findUserByPhone(String phone);
}

