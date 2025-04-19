package cn.kmbeast.pojo.dto.query.extend;

import cn.kmbeast.pojo.dto.query.base.QueryDto;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ScenicStrategyQueryDto extends QueryDto {
    private Integer userId;
    private Integer scenicId;
    private String title;
    private Boolean isAudit;
}