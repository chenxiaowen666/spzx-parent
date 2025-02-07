package com.atguigu.spzx.manager.mapper;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SysRoleUserMapper {

    void doAssign(Long userId, Long roleId);		// 添加关联关系
    void deleteByUserId(Long userId);				// 根据用户的id删除数据
    List<Long> findSysUserRoleByUserId(Long userId); // 根据用户id查询角色id


}
