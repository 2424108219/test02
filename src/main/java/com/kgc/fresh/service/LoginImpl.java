package com.kgc.fresh.service;

import com.kgc.fresh.beans.User;
import com.kgc.fresh.mapper.LoginAndRegister;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author zfy
 * @create 2020-09-17 10:36
 */
@Service
public class LoginImpl implements Login{
    @Autowired
    private LoginAndRegister loginAndRegister;
    @Override
    public User getUser(String userName, String userPwd) {
        return loginAndRegister.getUser(userName,userPwd);
    }

    @Override
    public Boolean isUserTelExist(String userTel) {
        //调用Mapper,查询手机号是否注册
        User ii=loginAndRegister.isUserTelExist(userTel);
        if (ii!=null){
            return true;
        }else {
            //查询到为空，返回false
            return false;
        }
    }
}
