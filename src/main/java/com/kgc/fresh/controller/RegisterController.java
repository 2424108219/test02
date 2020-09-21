package com.kgc.fresh.controller;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.kgc.fresh.beans.User;
import com.kgc.fresh.service.Register;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Random;

/**
 * @author zfy
 * @create 2020-09-14 12:15
 */
@Controller
public class RegisterController {
    @Autowired
    private Register register;

    @RequestMapping("toregister")
    public  String toregister(){
        return "register";
    }

    @RequestMapping("tologin")
    public  String tologin(){
        return "login";
    }

    @RequestMapping("tosuccess")
    public  String tosuccess(){
        return "success";
    }

    //异步判断用户名是否存在
    @ResponseBody
    @RequestMapping("checkUsername")
    public Boolean checkUsername(String userName){
        Boolean f1=register.isUserNameExist(userName);
        return f1;
    }

    //根据手机号发送验证码，并判断手机号是否存在
    @ResponseBody
    @RequestMapping("sendSms")
    public Object sendSms(HttpServletRequest httpServletRequest, String userTel,String userName,String userPwd){
        Boolean f1=register.isUserTelExist(userTel);
        //如果存在，返回true
        if (f1){
            return true;
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
                session.setAttribute("userName",userName);
                session.setAttribute("userPwd",userPwd);
                session.setAttribute("userTel",userTel);
			    //return sendSmsResponse;
                System.out.println(sendSmsResponse);
                return false;

            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }
    }


    //点击注册，如果所有数据和发送验证码时一致，则返回注册成功，否则注册失败
    @ResponseBody
    @RequestMapping("register")
    public Object register(User user,HttpSession session){
        try {
            //用户名与发送验证码前不一致
            if(!session.getAttribute("userName").equals(user.getUserName())){
                session.invalidate();
                return '0';
            }
            //密码与发送验证码前不一样
            else if(!session.getAttribute("userPwd").equals(user.getUserPwd())){
                session.invalidate();
                return '1';
            }
            //手机号与发送验证码前不一样
            else if(!session.getAttribute("userTel").equals(user.getPhone())){
                session.invalidate();
                return '2';
            }
            //输入的手机验证码超过60秒失效
            else if(session.getAttribute("verifyCodeCreateTime") !=null && (System.currentTimeMillis()-Long.valueOf(String.valueOf(session.getAttribute("verifyCodeCreateTime"))) )> 1000 * 60  ){
                session.invalidate();
                return '3';
            }
            //手机验证码校验成功并注册
            else if (session.getAttribute("verifyCode") != null &&
                    user.getVerifyCode().equals(session.getAttribute("verifyCode"))){
                Boolean resultUser = register.register(user);
                session.invalidate();
                return '4';
            }
            //手机验证码校验失败
            else{
                session.invalidate();
                return '5';
            }

        }catch(Exception e){
            e.printStackTrace();
            return null;
        }

    }


}
