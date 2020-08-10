package com.zy.demo.service.impl;

import com.zy.demo.mapper.RoleMapper;
import com.zy.demo.pojo.Role;
import com.zy.demo.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> getList() {
        return this.roleMapper.getList();
    }

    @Override
    public List<Role> findRoleByUserId(Integer id) {
        return this.roleMapper.findRoleByUserId(id);
    }
}
