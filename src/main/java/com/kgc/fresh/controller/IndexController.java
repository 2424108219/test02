package com.kgc.fresh.controller;

import com.kgc.fresh.beans.Product;
import com.kgc.fresh.service.Index;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

/**
 * @author zfy
 * @create 2020-09-18 10:42
 */
@Controller
public class IndexController {
    @Autowired
    private Index index;

    @RequestMapping("toindex")
    public String toindex(Map<String,Object> map){
        List<Product> products=index.queryIndexAllProducts();
        map.put("products",products);
        return "index";
    }

    @RequestMapping("loginout")
    public String login(HttpSession session) {
        session.invalidate();
        return "redirect:tologin";
    }
}
