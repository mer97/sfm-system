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
* 奖惩事件记录表
*
*
* @author lihai
* @since 2020-10-03
*/
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("sfm_reward_punishment")
public class SFMRewardPunishment extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
    * 学生id
    */
    private String studentId;

    /**
    * 发生时间
    */
    private LocalDateTime date;

    /**
    * 事件说明
    */
    private String incident;

    /**
    * 性质
    */
    private String nature;

    /**
    * 地点
    */
    private String site;


}
