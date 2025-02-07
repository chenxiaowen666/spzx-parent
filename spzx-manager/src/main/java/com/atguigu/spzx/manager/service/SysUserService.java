package com.atguigu.spzx.manager.service;

import com.atguigu.spzx.model.dto.system.AssginRoleDto;
import com.atguigu.spzx.model.dto.system.LoginDto;
import com.atguigu.spzx.model.dto.system.SysUserDto;
import com.atguigu.spzx.model.entity.system.SysRole;
import com.atguigu.spzx.model.entity.system.SysUser;
import com.atguigu.spzx.model.vo.common.Result;
import com.atguigu.spzx.model.vo.system.LoginVo;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.PathVariable;

public interface SysUserService {
    /**
     * 根据用户名查询用户数据
     * @return
     */
    LoginVo login(LoginDto loginDto) ;

    SysUser getUserInfo(String token);

    void logout(String token);

    //===========上面是登录业务用到的

    PageInfo<SysUser> findByPage(SysUserDto sysUserDto , Integer pageNum , Integer pageSize);

    void saveSysUser(SysUser sysUser);

    void updateSysUser(SysUser sysUser);

    void deleteById(Long userId);

    void doAssign(AssginRoleDto assginRoleDto);



}
