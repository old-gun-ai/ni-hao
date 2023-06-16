package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChushixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChushixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChushixinxiView;


/**
 * 厨师信息
 *
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
public interface ChushixinxiService extends IService<ChushixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChushixinxiVO> selectListVO(Wrapper<ChushixinxiEntity> wrapper);
   	
   	ChushixinxiVO selectVO(@Param("ew") Wrapper<ChushixinxiEntity> wrapper);
   	
   	List<ChushixinxiView> selectListView(Wrapper<ChushixinxiEntity> wrapper);
   	
   	ChushixinxiView selectView(@Param("ew") Wrapper<ChushixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChushixinxiEntity> wrapper);
   	

}

