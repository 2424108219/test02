package com.kgc.fresh.controller;

import com.kgc.fresh.beans.News;
import com.kgc.fresh.service.Consult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @author zfy
 * @create 2020-09-17 16:36
 */
@Controller
public class ConsultController {

    @Autowired
    private Consult consult;

    @RequestMapping("toConsultDetail")
    public String toConsultDetail(@RequestParam("id") Integer id, Map<String,Object> map){
        System.out.println("0000000000000000000000000"+id);
        News news=consult.querynews(id);
        map.put("news",news);
        return "ConsultDetail";
    }

    @RequestMapping("toConsult")
    public String toConsult(Map<String,Object> map){
        List<News> news=consult.getAllNews();
        for (News n:news){
            Date currentTime =n.getCreateTime();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String dateString = formatter.format(currentTime);
            n.setYy(dateString.substring(0,4));
            n.setMm(dateString.substring(5,7));
            n.setDd(dateString.substring(8,10));
            n.setIntroduction(n.getContent().substring(0,50)+"...");
        }
        map.put("news",news);
        return "consult";
    }

}
