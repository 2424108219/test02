package com.kgc.fresh.controller;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.kgc.fresh.beans.User;
import com.kgc.fresh.service.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Random;

/**
 * @author zfy
 * @create 2020-09-17 10:35
 */
@Controller
public class LoginController {
    @Autowired
    private Login login;

    //用户名密码登录
    @ResponseBody
    @RequestMapping("Login")
    public Boolean login(String userName, String userPwd, HttpSession session){
        User user=login.getUser(userName,userPwd);
        //如果用户为空，返回false,否则返回true
        if (user==null){
            return false;
        }else {
            session.setAttribute("id",user.getUserId());
            return true;
        }
    }

    //根据手机号发送验证码，并判断手机号是否存在
    @ResponseBody
    @RequestMapping("sendSmsByLogin")
    public Boolean sendSmsByLogin(HttpServletRequest httpServletRequest, String userTel){
        Boolean f1=login.isUserTelExist(userTel);
        //如果返回false,在则表示手机号未注册
        if (f1==false){
            return false;
        }else {
            try {
                //生成6位验证码
                String verifyCode = String.valueOf(new Random().nextInt(899999) + 100000);
                //设置超时时间(不必修改)
                System.setProperty("sun.net.client.defaultConnectTimeout", "10000");
                //(不必修改)
                System.setProperty("sun.net.client.defaultReadTimeout", "10000");
                //初始化ascClient，("***"分别填写自己的AccessKey ID和Secret)
                IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4FyYpSkWXv16Ni3NEMgy", "KZd3NWyiN0vIGnNBl3DxjYyRwMR52F");
                //(不必修改)
                DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", "Dysmsapi", "dysmsapi.aliyuncs.com");
                //(不必修改)
                IAcsClient acsClient = new DefaultAcsClient(profile);
                //组装请求对象(不必修改)
                SendSmsRequest request = new SendSmsRequest();
                //****处填写接收方的手机号码
                request.setPhoneNumbers(userTel);
                //****填写已申请的短信签名
                request.setSignName("课工场");
                //****填写获得的短信模版CODE
                request.setTemplateCode("SMS_202545620");
                //笔者的短信模版中有${code}, 因此此处对应填写验证码
                request.setTemplateParam("{\"code\":\""+verifyCode+"\"}");
                //不必修改
                SendSmsResponse sendSmsResponse = acsClient.getAcsResponse(request);

                //将生成的验证码和创建时间放到session中，后面验证从session中取
                HttpSession session = httpServletRequest.getSession();
                session.setAttribute("verifyCode",verifyCode);
                session.setAttribute("verifyCodeCreateTime",System.currentTimeMillis());
                session.setAttribute("userTel",userTel);
                //return sendSmsResponse;
                System.out.println(sendSmsResponse);
                return true;

            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
    }

    //手机验证登录
    @ResponseBody
    @RequestMapping("LoginByVerifyCode")
    public Object LoginByVerifyCode(HttpSession session,String userTel,String verifyCode){
        //判断手机号是否正确
        if (!session.getAttribute("userTel").equals(userTel)){
            session.invalidate();
            return '0';
        }//输入的手机验证码超过60秒失效
        else if(session.getAttribute("verifyCodeCreateTime") !=null && (System.currentTimeMillis()-Long.valueOf(String.valueOf(session.getAttribute("verifyCodeCreateTime"))) )> 1000 * 60  ){
            session.invalidate();
            return '1';
        }
        //手机验证码正确，登录成功
        else if (session.getAttribute("verifyCode") != null &&
                verifyCode.equals(session.getAttribute("verifyCode"))){
            return '2';
        }
        //验证码不正确，登录失败
        else{
            session.invalidate();
            return '3';
        }

    }
}
