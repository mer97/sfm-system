package com.example.sfm.controller;

import com.example.sfm.util.ResultUtil;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * 用户管理控制器
 */
@RestController
@RequestMapping("/api/v1/user")
public class UserRestController {

    /**
     * 获取当前登录的用户信息
     * 权限验证：
     *      当请求/api/v1/user/userInfo接口时，判断该用户是否拥有“DEFAULT”权限。
     */
    @PreAuthorize("hasAuthority('DEFAULT')")
    @GetMapping("/userInfo")
    public ResultUtil getUserInfo(){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Map<String, Object> userInfo = new HashMap<>();
        userInfo.put("name", authentication.getName()); // 用户名
        userInfo.put("authorities", authentication.getAuthorities()); // 系统权限
        return ResultUtil.success(userInfo);
    }

}
