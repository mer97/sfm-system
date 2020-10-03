package com.example.sfm.pojo;

    import com.baomidou.mybatisplus.annotation.TableName;
    import com.baomidou.mybatisplus.annotation.IdType;
    import com.example.sfm.base.pojo.BaseEntity;
    import com.baomidou.mybatisplus.annotation.TableId;
    import lombok.Data;
    import lombok.EqualsAndHashCode;

/**
*
* 班级表
*
*
* @author lihai
* @since 2020-10-03
*/
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sfm_class")
public class SFMClass extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
    * 年级名称
    */
    private String gradeName;

    /**
    * 班级编号
    */
    private String calssNumber;

    /**
    * 专业id
    */
    private String specialtyId;

    /**
    * 教师id
    */
    private String teacherId;

    /**
    * 班长id
    */
    private String classPresidentId;


}
