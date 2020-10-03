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
* 教育经历表
*
*
* @author lihai
* @since 2020-10-03
*/
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sfm_education_experience")
public class SFMEducationExperience extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
    * 开始时间
    */
    private LocalDateTime startDate;

    /**
    * 结束时间
    */
    private LocalDateTime endDate;

    /**
    * 在校职务
    */
    private String positionName;

    /**
    * 学校名称
    */
    private String schoolName;

    /**
    * 证明人姓名
    */
    private String certifierName;


}
