package com.kgc.fresh.mapper;

import com.kgc.fresh.beans.News;

import java.util.List;

/**
 * @author zfy
 * @create 2020-09-17 16:38
 */
public interface ConsultMapper {
    News querynews(Integer id);

    List<News> getAllNews();
}
