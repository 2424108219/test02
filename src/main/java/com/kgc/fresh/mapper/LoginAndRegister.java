package com.kgc.fresh.mapper;

import com.kgc.fresh.beans.User;

/**
 * @author zfy
 * @create 2020-09-14 12:19
 */
public interface LoginAndRegister {

    User isUserNameExist(String userName);

    User isUserTelExist(String userTel);

    Boolean register(User user);

    User getUser(String userName,String userPwd);
}
