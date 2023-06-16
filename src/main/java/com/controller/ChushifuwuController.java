package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.ChushifuwuEntity;
import com.entity.view.ChushifuwuView;

import com.service.ChushifuwuService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 厨师服务
 * 后端接口
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
@RestController
@RequestMapping("/chushifuwu")
public class ChushifuwuController {
    @Autowired
    private ChushifuwuService chushifuwuService;



    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ChushifuwuEntity chushifuwu, 
		HttpServletRequest request){

        EntityWrapper<ChushifuwuEntity> ew = new EntityWrapper<ChushifuwuEntity>();


		PageUtils page = chushifuwuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chushifuwu), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ChushifuwuEntity chushifuwu, 
		HttpServletRequest request){
        EntityWrapper<ChushifuwuEntity> ew = new EntityWrapper<ChushifuwuEntity>();

		PageUtils page = chushifuwuService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chushifuwu), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChushifuwuEntity chushifuwu){
       	EntityWrapper<ChushifuwuEntity> ew = new EntityWrapper<ChushifuwuEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chushifuwu, "chushifuwu")); 
        return R.ok().put("data", chushifuwuService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChushifuwuEntity chushifuwu){
        EntityWrapper< ChushifuwuEntity> ew = new EntityWrapper< ChushifuwuEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chushifuwu, "chushifuwu")); 
		ChushifuwuView chushifuwuView =  chushifuwuService.selectView(ew);
		return R.ok("查询厨师服务成功").put("data", chushifuwuView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ChushifuwuEntity chushifuwu = chushifuwuService.selectById(id);
        return R.ok().put("data", chushifuwu);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ChushifuwuEntity chushifuwu = chushifuwuService.selectById(id);
        return R.ok().put("data", chushifuwu);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChushifuwuEntity chushifuwu, HttpServletRequest request){
    	chushifuwu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chushifuwu);

        chushifuwuService.insert(chushifuwu);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChushifuwuEntity chushifuwu, HttpServletRequest request){
    	chushifuwu.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chushifuwu);

        chushifuwuService.insert(chushifuwu);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody ChushifuwuEntity chushifuwu, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chushifuwu);
        chushifuwuService.updateById(chushifuwu);//全部更新
        return R.ok();
    }
    
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chushifuwuService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ChushifuwuEntity> wrapper = new EntityWrapper<ChushifuwuEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = chushifuwuService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	









}
