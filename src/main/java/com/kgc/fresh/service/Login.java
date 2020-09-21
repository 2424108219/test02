package com.kgc.fresh.service;

import com.kgc.fresh.beans.User;

/**
 * @author zfy
 * @create 2020-09-17 10:36
 */
public interface Login {
    User getUser(String userName,String userPwd);

    Boolean isUserTelExist(String userTel);
}
