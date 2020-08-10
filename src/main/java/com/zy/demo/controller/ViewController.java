package com.zy.demo.controller;

import com.zy.demo.pojo.Role;
import com.zy.demo.pojo.User;
import com.zy.demo.pojo.dto.PermissionDto;
import com.zy.demo.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ViewController {

    @Autowired
    private PermissionService permissionService;

    @RequestMapping("/")
    public String login(HttpSession session){
        //清空session
        session.removeAttribute("user");
        session.removeAttribute("role");
        return "login";
    }

    @RequestMapping("/index")
    public String index(Model model,HttpSession session){
        //获取用户信息
        User user = (User) session.getAttribute("user");

        //获取角色信息
        List<Role> roleList = (List<Role>) session.getAttribute("role");
        //查询权限
        List<Integer> roleIds = new ArrayList<>();
        for (Role role : roleList) {
            roleIds.add(role.getId());
        }
        //获取到的权限菜单
        List<PermissionDto> permissionList = this.permissionService.getMap(roleIds);
        model.addAttribute("info",permissionList);
        model.addAttribute("user",user);
        return "index";
    }

    @RequestMapping("views/console")
    public String console(){
        return "views/console";
    }

    @RequestMapping("views/users")
    public String users(){
        return "views/users";
    }

    @RequestMapping("views/roles")
    public String roles(){
        return "views/roles";
    }

    @RequestMapping("views/operaterule")
    public String operaterule(){
        return "views/operaterule";
    }
}
