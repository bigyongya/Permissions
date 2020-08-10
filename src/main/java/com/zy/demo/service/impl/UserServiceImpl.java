package com.zy.demo.service.impl;

import com.zy.demo.mapper.UserMapper;
import com.zy.demo.pojo.User;
import com.zy.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> getList() {
        return userMapper.getList();
    }

    @Override
    public User getOne(String username) {
        return  this.userMapper.getOne(username);
    }
}
