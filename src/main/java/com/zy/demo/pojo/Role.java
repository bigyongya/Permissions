package com.zy.demo.pojo;

import lombok.Data;

import java.util.Date;

@Data
public class Role {
    private Integer id;
    private String name;
    private String sort;
    private String description;
    private String status;
    private Date gmtCreate;
    private Date gmtModified;
}
