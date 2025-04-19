package cn.kmbeast.pojo.dto.query.extend;

import cn.kmbeast.pojo.dto.query.base.QueryDto;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ScenicTicketQueryDto extends QueryDto {
    /**
     * 景点ID
     */
    private Integer scenicId;
    /**
     * 门票的介绍
     */
    private String detail;
    /**
     * 门票的可用状态
     */
    private Boolean useStatus;
}