package cn.kmbeast.controller;

import cn.kmbeast.aop.Pager;
import cn.kmbeast.pojo.api.Result;
import cn.kmbeast.pojo.dto.query.extend.ScenicQueryDto;
import cn.kmbeast.pojo.entity.Scenic;
import cn.kmbeast.pojo.vo.ScenicVO;
import cn.kmbeast.pojo.vo.SelectedVO;
import cn.kmbeast.service.ScenicService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 景点的控制器
 */
@RestController
@RequestMapping("/scenic")
public class ScenicController {

    @Resource
    private ScenicService scenicService;

    /**
     * 景点新增
     *
     * @param scenic 景点实体
     * @return Result<Void>
     */
    @PostMapping(value = "/save")
    @ResponseBody
    public Result<Void> save(@RequestBody Scenic scenic) {
        return scenicService.save(scenic);
    }

    /**
     * 景点修改
     *
     * @param scenic 景点实体
     * @return Result<Void>
     */
    @PutMapping(value = "/update")
    @ResponseBody
    public Result<Void> update(@RequestBody Scenic scenic) {
        return scenicService.update(scenic);
    }

    /**
     * 景点批量删除
     *
     * @param ids 景点Id列表
     * @return Result<Void>
     */
    @PostMapping(value = "/batchDelete")
    @ResponseBody
    public Result<Void> batchDelete(@RequestBody List<Integer> ids) {
        return scenicService.batchDelete(ids);
    }

    /**
     * 查询供应商名下管理的景点信息
     *
     * @return Result<Void>
     */
    @Pager
    @PostMapping(value = "/queryVendorScenic")
    @ResponseBody
    public Result<List<ScenicVO>> queryVendorScenic(@RequestBody ScenicQueryDto dto) {
        return scenicService.queryVendorScenic(dto);
    }

    /**
     * 关联景点下拉选择器
     *
     * @return Result<List<SelectedVO>>
     */
    @GetMapping(value = "/querySelectedScenic")
    @ResponseBody
    public Result<List<SelectedVO>> querySelectedScenic() {
        return scenicService.querySelectedScenic();
    }

    /**
     * 浏览操作
     *
     * @return Result<Void>
     */
    @Pager
    @PostMapping(value = "/viewOperation/{scenicId}")
    @ResponseBody
    public Result<Void> viewOperation(@PathVariable Integer scenicId) {
        return scenicService.viewOperation(scenicId);
    }

    /**
     * 收藏操作
     *
     * @return Result<Void>
     */
    @Pager
    @PostMapping(value = "/saveOperation/{scenicId}")
    @ResponseBody
    public Result<Void> saveOperation(@PathVariable Integer scenicId) {
        return scenicService.saveOperation(scenicId);
    }

    /**
     * 查询用户的收藏景点状况
     *
     * @return Result<Void>
     */
    @Pager
    @PostMapping(value = "/saveStatus/{scenicId}")
    @ResponseBody
    public Result<Boolean> saveStatus(@PathVariable Integer scenicId) {
        return scenicService.saveStatus(scenicId);
    }

    /**
     * 查询用户收藏的景点信息
     *
     * @return List<ScenicVO>
     */
    @Pager
    @GetMapping(value = "/querySave")
    @ResponseBody
    public Result<List<ScenicVO>> querySave() {
        return scenicService.querySave();
    }


    /**
     * 查询景点
     *
     * @return Result<Void>
     */
    @Pager
    @PostMapping(value = "/query")
    @ResponseBody
    public Result<List<ScenicVO>> query(@RequestBody ScenicQueryDto dto) {
        return scenicService.query(dto);
    }

}