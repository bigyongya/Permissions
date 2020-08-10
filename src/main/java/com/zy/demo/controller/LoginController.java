package com.zy.demo.controller;

import com.zy.demo.pojo.Constant;
import com.zy.demo.pojo.Role;
import com.zy.demo.pojo.User;
import com.zy.demo.service.PermissionService;
import com.zy.demo.service.RoleService;
import com.zy.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class LoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private RoleService roleService;

    @Autowired
    private PermissionService permissionService;

    @PostMapping("login")
    public String login(@RequestBody User u, HttpSession session){
        //根据用户名查询用户
        User user = this.userService.getOne(u.getUsername());

        //用户名不存在
        if(user==null){
            return Constant.INEXISTENCE;
        }

        //密码不正确
        if(!u.getPassword().equals(user.getPassword())){
            return Constant.PASSWORD_INCORRECT;
        }

        //查询用户的角色
        List<Role> roleList = this.roleService.findRoleByUserId(user.getId());
        if(roleList==null || roleList.size()==0){
            return Constant.NO_ROLE;
        }

        //保存到session中
        session.setAttribute("user",user);
        session.setAttribute("role",roleList);
        return Constant.SUCCESS;
    }
}
