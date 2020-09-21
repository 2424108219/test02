package com.kgc.fresh.service;

import com.kgc.fresh.beans.Product;
import com.kgc.fresh.mapper.IndexMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zfy
 * @create 2020-09-18 10:44
 */
@Service
public class IndexImpl implements Index{
    @Autowired
    private IndexMapper indexMapper;
    @Override
    public List<Product> queryIndexAllProducts() {
        return indexMapper.queryIndexAllProducts();
    }
}
