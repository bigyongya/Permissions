package com.zy.demo.pojo;

import lombok.Data;

import java.util.Date;

@Data
public class Permission {
    private Integer id;
    private Integer pid;
    private String name;
    private Integer type;
    private Integer sort;
    private String url;
    private String permCode;
    private String icon;
    private String description;
    private Integer status;
    private Date gmtCreate;
    private Date gmtModified;
}
