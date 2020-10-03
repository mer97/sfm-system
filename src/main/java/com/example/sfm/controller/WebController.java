package com.example.sfm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 跳转控制器
 */
@Controller
@RequestMapping("/web")
public class WebController {

    /**
     * 页面跳转
     */
    @GetMapping("/admin/user-setting")
    public String userSetting() {
        return "admin/user-setting";
    }

    @GetMapping("/admin/user-password")
    public String userPassword() {
        return "admin/user-password";
    }

    @GetMapping("/admin/setting")
    public String setting() {
        return "admin/setting";
    }

    @GetMapping("/404")
    public String notFound() {
        return "404";
    }

}
