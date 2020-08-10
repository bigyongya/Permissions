package com.zy.demo.mapper;

import com.zy.demo.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    List<User> getList();

    User getOne(@Param("username") String username);
}
