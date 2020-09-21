package com.kgc.fresh.service;

import com.kgc.fresh.beans.News;

import java.util.List;

/**
 * @author zfy
 * @create 2020-09-17 16:36
 */
public interface Consult {
    News querynews(Integer id);

    List<News> getAllNews();
}
