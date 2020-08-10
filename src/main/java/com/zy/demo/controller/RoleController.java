package com.zy.demo.controller;

import com.zy.demo.pojo.Role;
import com.zy.demo.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/views/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @PostMapping("getList")
    public List<Role> getList(){
        return roleService.getList();
    }
}
