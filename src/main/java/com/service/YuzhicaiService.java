package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.YuzhicaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.YuzhicaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.YuzhicaiView;


/**
 * 预制菜
 *
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface YuzhicaiService extends IService<YuzhicaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<YuzhicaiVO> selectListVO(Wrapper<YuzhicaiEntity> wrapper);
   	
   	YuzhicaiVO selectVO(@Param("ew") Wrapper<YuzhicaiEntity> wrapper);
   	
   	List<YuzhicaiView> selectListView(Wrapper<YuzhicaiEntity> wrapper);
   	
   	YuzhicaiView selectView(@Param("ew") Wrapper<YuzhicaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<YuzhicaiEntity> wrapper);
   	

}

