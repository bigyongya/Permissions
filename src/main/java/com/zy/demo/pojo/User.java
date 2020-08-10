package com.zy.demo.pojo;

import lombok.Data;

import java.util.Date;

@Data
public class User {
    private Integer id;
    private String username;
    private String nickname;
    private String password;
    private String salt;
    private String email;
    private Integer status;
    private Date gmtCreate;
    private Date gmtModified;
}
