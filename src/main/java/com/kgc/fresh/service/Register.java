package com.kgc.fresh.service;

import com.kgc.fresh.beans.User;

/**
 * @author zfy
 * @create 2020-09-15 15:23
 */
public interface Register {
    Boolean isUserNameExist(String userName);

    Boolean isUserTelExist(String userTel);

    Boolean register(User user);
}
