package com.example.sfm.pojo;

    import com.baomidou.mybatisplus.annotation.TableName;
    import com.baomidou.mybatisplus.annotation.IdType;
    import com.example.sfm.base.pojo.BaseEntity;
    import com.baomidou.mybatisplus.annotation.TableId;
    import lombok.Data;
    import lombok.EqualsAndHashCode;

/**
*
* 专业表
*
*
* @author lihai
* @since 2020-10-03
*/
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sfm_specialty")
public class SFMSpecialty extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
    * 专业名称
    */
    private String name;

    /**
    * 学院id
    */
    private String collegeId;


}
