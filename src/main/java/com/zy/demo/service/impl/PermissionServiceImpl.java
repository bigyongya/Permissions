package com.zy.demo.service.impl;

import com.zy.demo.mapper.PermissionMapper;
import com.zy.demo.pojo.Permission;
import com.zy.demo.pojo.dto.PermissionDto;
import com.zy.demo.service.PermissionService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    private PermissionMapper permissionMapper;

    @Override
    public List<PermissionDto> getMap(List<Integer> roleIds) {
        //没有角色的用户直接返回  查看不到菜单
        if(roleIds==null || roleIds.size()==0){
            return null;
        }
        //查询菜单列表
        List<Permission> permissionList = this.permissionMapper.getPermissionByPid(0,roleIds);
        //创建返回的数据
        List<PermissionDto> permissionDtoList = new ArrayList<>();
        //遍历
        for (Permission permission : permissionList) {
            PermissionDto permissionDto = new PermissionDto();
            //将菜单信息保存到dto
            BeanUtils.copyProperties(permission,permissionDto);
            //查菜单的子项
            List<Permission> permissions = this.permissionMapper.getPermissionByPid(permission.getId(),roleIds);
            permissionDto.setPermissionList(permissions);
            permissionDtoList.add(permissionDto);
        }
        return permissionDtoList;
    }
}
