package com.zy.demo.controller;

import com.zy.demo.pojo.User;
import com.zy.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("views/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("getList")
    public List<User> getList(){
        return this.userService.getList();
    }
}
