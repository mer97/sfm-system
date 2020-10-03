package com.example.sfm.pojo;

    import com.baomidou.mybatisplus.annotation.TableName;
    import com.baomidou.mybatisplus.annotation.IdType;
    import com.example.sfm.base.pojo.BaseEntity;
    import com.baomidou.mybatisplus.annotation.TableId;
    import lombok.Data;
    import lombok.EqualsAndHashCode;

/**
*
* 教师表
*
*
* @author lihai
* @since 2020-10-03
*/
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sfm_teacher")
public class SFMTeacher extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
    * 教师编号
    */
    private Integer teacherNumber;

    /**
    * 教师名称
    */
    private String teacherName;

    /**
    * 学院id
    */
    private String collegeId;

    /**
    * 登录密码
    */
    private String password;


}
