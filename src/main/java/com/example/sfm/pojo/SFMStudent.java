package com.example.sfm.pojo;

    import com.baomidou.mybatisplus.annotation.TableName;
    import com.baomidou.mybatisplus.annotation.IdType;
    import com.example.sfm.base.pojo.BaseEntity;
    import java.time.LocalDateTime;
    import com.baomidou.mybatisplus.annotation.TableId;
    import lombok.Data;
    import lombok.EqualsAndHashCode;

/**
*
* 学生信息表
*
*
* @author lihai
* @since 2020-10-03
*/
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sfm_student")
public class SFMStudent extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
    * 学号
    */
    private String studentNumber;

    /**
    * 姓名
    */
    private String studentName;

    /**
    * 性别（男1，女2）
    */
    private String gender;

    /**
    * 民族
    */
    private String nation;

    /**
    * 出生日期
    */
    private LocalDateTime birthdate;

    /**
    * 籍贯
    */
    private String nativePlace;

    /**
    * 身份证号码
    */
    private String idCard;

    /**
    * 入校日期
    */
    private LocalDateTime enrolledDate;

    /**
    * 班级Id
    */
    private String classId;

    /**
    * 免冠照片
    */
    private String bareheadedPhoto;

    /**
    * 档案编号
    */
    private String fileUmber;

    /**
    * 家庭住址
    */
    private String homeAddress;

    /**
    * 登录密码
    */
    private String password;


}
