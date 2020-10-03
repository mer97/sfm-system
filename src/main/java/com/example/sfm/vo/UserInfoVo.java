package com.example.sfm.vo;

import lombok.Data;

/**
 * 接收修改用户的信息
 */
@Data
public class UserInfoVo {
    private String loginName;	//	登录账号
    private String phone; 	// 电话
    private String email; 	// 邮箱
}
