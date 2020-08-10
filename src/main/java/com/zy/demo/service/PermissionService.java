package com.zy.demo.service;

import com.zy.demo.pojo.dto.PermissionDto;

import java.util.List;

public interface PermissionService {
    List<PermissionDto> getMap(List<Integer> roleIds);
}
