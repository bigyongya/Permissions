package com.zy.demo.service;

import com.zy.demo.pojo.User;

import java.util.List;

public interface UserService {
    List<User> getList();

    User getOne(String username);
}
