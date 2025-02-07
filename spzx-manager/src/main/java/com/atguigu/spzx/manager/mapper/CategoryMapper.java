package com.atguigu.spzx.manager.mapper;

import com.atguigu.spzx.model.entity.product.Category;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CategoryMapper {

    public abstract List<Category> selectByParentId(Long parentId);
    public abstract int countByParentId(Long id);
    List<Category> selectAll();

    void batchInsert(List<Category> categoryList);


}
