package com.nhoclahola.study_05_servlet_jpa.dao;

import com.nhoclahola.study_05_servlet_jpa.entities.Category;

import java.util.List;

public interface ICategoryDao
{
    public void insert(Category category);

    public void update(Category category);

    public void delete(int cateid) throws Exception;

    Category findById(int cateid);

    public List<Category> findAll();

    public List<Category> findByCategoryname(String catname);

    public List<Category> findAll(int page, int pagesize);

    int count();
}
