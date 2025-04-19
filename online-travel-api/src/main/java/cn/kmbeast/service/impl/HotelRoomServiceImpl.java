package cn.kmbeast.service.impl;

import cn.kmbeast.mapper.HotelRoomMapper;
import cn.kmbeast.pojo.api.ApiResult;
import cn.kmbeast.pojo.api.Result;
import cn.kmbeast.pojo.dto.query.extend.HotelRoomQueryDto;
import cn.kmbeast.pojo.entity.HotelRoom;
import cn.kmbeast.pojo.vo.HotelRoomVO;
import cn.kmbeast.service.HotelRoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.List;

/**
 * 酒店房间的业务逻辑实现类
 */
@Service
public class HotelRoomServiceImpl implements HotelRoomService {

    @Resource
    private HotelRoomMapper hotelRoomMapper;

    /**
     * 酒店房间新增
     *
     * @param hotelRoom 实体
     * @return Result<Void>
     */
    @Override
    public Result<Void> save(HotelRoom hotelRoom) {
        // 设置初始时间
        hotelRoom.setCreateTime(LocalDateTime.now());
        hotelRoomMapper.save(hotelRoom);
        return ApiResult.success();
    }

    /**
     * 酒店房间修改
     *
     * @param hotelRoom 实体
     * @return Result<Void>
     */
    @Override
    public Result<Void> update(HotelRoom hotelRoom) {
        hotelRoomMapper.update(hotelRoom);
        return ApiResult.success();
    }

    /**
     * 酒店房间删除
     *
     * @param ids 酒店房间ID列表
     * @return Result<Void>
     */
    @Override
    public Result<Void> batchDelete(List<Integer> ids) {
        hotelRoomMapper.batchDelete(ids);
        return ApiResult.success();
    }

    /**
     * 酒店房间查询
     *
     * @param dto 查询实体
     * @return Result<HotelRoomVO>
     */
    @Override
    public Result<List<HotelRoomVO>> query(HotelRoomQueryDto dto) {
        Integer totalCount = hotelRoomMapper.queryCount(dto);
        List<HotelRoomVO> result = hotelRoomMapper.query(dto);
        return ApiResult.success(result, totalCount);
    }
}