package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ChushifuwuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ChushifuwuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ChushifuwuView;


/**
 * 厨师服务
 *
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
public interface ChushifuwuService extends IService<ChushifuwuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ChushifuwuVO> selectListVO(Wrapper<ChushifuwuEntity> wrapper);
   	
   	ChushifuwuVO selectVO(@Param("ew") Wrapper<ChushifuwuEntity> wrapper);
   	
   	List<ChushifuwuView> selectListView(Wrapper<ChushifuwuEntity> wrapper);
   	
   	ChushifuwuView selectView(@Param("ew") Wrapper<ChushifuwuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ChushifuwuEntity> wrapper);
   	

}

