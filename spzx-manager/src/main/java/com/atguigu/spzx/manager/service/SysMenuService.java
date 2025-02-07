package com.atguigu.spzx.manager.service;

import com.atguigu.spzx.common.exception.GuiguException;
import com.atguigu.spzx.model.entity.system.SysMenu;
import com.atguigu.spzx.model.vo.common.Result;
import com.atguigu.spzx.model.vo.common.ResultCodeEnum;
import com.atguigu.spzx.model.vo.system.SysMenuVo;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

public interface SysMenuService {

    List<SysMenu> findNodes();

    void save(SysMenu sysMenu);

    void updateById(SysMenu sysMenu);

    void removeById(Long id);

    List<SysMenuVo> findUserMenuList();

}
