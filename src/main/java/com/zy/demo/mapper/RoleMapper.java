package com.zy.demo.mapper;

import com.zy.demo.pojo.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RoleMapper {
    List<Role> getList();

    List<Role> findRoleByUserId(@Param("id") Integer id);
}
