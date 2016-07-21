package com.bart.service;

import com.bart.entity.User;

import java.util.List;

/**
 * for SSM2
 * Created by Bart on 16/7/19.
 * Date: 16/7/19 16:33
 */
public interface UserService {
    User getUserById(Integer userId);

    List<User> getAllUser();

}
