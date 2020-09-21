package com.kgc.fresh.beans;

import lombok.Data;

import java.util.Date;

/**
 * @author zfy
 * @create 2020-09-17 16:37
 */
@Data
public class News {
    private Integer id;
    private String title;
    private String content;
    private Date createTime;
    private String yy;
    private String mm;
    private String dd;
    private String Introduction;
}
