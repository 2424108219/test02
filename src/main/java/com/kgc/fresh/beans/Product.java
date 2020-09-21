package com.kgc.fresh.beans;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
public class Product {

    private  Integer id;
    private String name;
    private  Integer category;
    private  Integer remarkId;
    private  Double price;
    private  Integer stock;
    private String image;
    private String text;
    private String description;
    private Integer remarkNum;
    private Integer saleNum;
    private Integer status;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date addDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private Date createDate;
    private String cname;
}
