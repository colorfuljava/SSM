package com.bart.service.impl;

import com.bart.dao.UserMapper;
import com.bart.entity.User;
import com.bart.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * for SSM2
 * Created by Bart on 16/7/19.
 * Date: 16/7/19 16:34
 */


@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User getUserById(Integer userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    public List<User> getAllUser() {
        List<User> list = null;
        list = userMapper.getAllUser();
        return list;
    }
}
