package com.kgc.fresh.beans;

import lombok.Data;

import java.util.Date;

/**
 * @author zfy
 * @create 2020-09-15 15:17
 */
@Data
public class User {
    private Integer userId;
    private String userName;
    private String userPwd;
    private String phone;
    private Date createDate;
    private String verifyCode;
}
