package cn.kmbeast.pojo.dto.query.extend;

import cn.kmbeast.pojo.dto.query.base.QueryDto;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ScenicTicketOrderQueryDto extends QueryDto {
    /**
     * 用户ID
     */
    private Integer userId;
    /**
     * 门票ID
     */
    private Integer ticketId;
    /**
     * 支付状态
     */
    private Boolean payStatus;
    /**
     * 景点ID
     */
    private Integer scenicId;  // 添加此字段
}
