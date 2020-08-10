package com.zy.demo.pojo.dto;

import com.zy.demo.pojo.Permission;
import lombok.Data;

import java.util.List;

@Data
public class PermissionDto extends Permission {
    private List<Permission> permissionList;
}
