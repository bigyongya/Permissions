package com.zy.demo.service;

import com.zy.demo.pojo.Role;

import java.util.List;

public interface RoleService {
    List<Role> getList();

    List<Role> findRoleByUserId(Integer id);
}
