package com.kgc.fresh.service;

import com.kgc.fresh.beans.News;
import com.kgc.fresh.mapper.ConsultMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zfy
 * @create 2020-09-17 16:36
 */
@Service
public class ConsultImpl implements Consult{
    @Autowired
    private ConsultMapper consultMapper;
    @Override
    public News querynews(Integer id) {
        return consultMapper.querynews(id);
    }

    @Override
    public List<News> getAllNews() {
        //查询所有news
        return consultMapper.getAllNews();
    }
}
