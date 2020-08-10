package com.zy.demo.mapper;

import com.zy.demo.pojo.Permission;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PermissionMapper {
    List<Permission> getList();

    List<Permission> getPermissionByPid(@Param("pid") Integer id,@Param("roleIds") List<Integer> roleIds);
}
