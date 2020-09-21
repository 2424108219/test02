package com.kgc.fresh.service;

import com.kgc.fresh.beans.User;
import com.kgc.fresh.mapper.LoginAndRegister;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author zfy
 * @create 2020-09-15 15:24
 */
@Service
public class RegisterImpl implements  Register{
    @Autowired
    private LoginAndRegister loginAndRegister;
    @Override
    public Boolean isUserNameExist(String userName) {
        //调用Mapper,查询用户名是否存在
        User i=loginAndRegister.isUserNameExist(userName);
        if (i!=null){
            return true;
        }else {
            //查询到为空，可以注册,返回false
            return false;
        }
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

    @Override
    public Boolean register(User user) {
        return loginAndRegister.register(user);
    }
}
