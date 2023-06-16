package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussyuzhicaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussyuzhicaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussyuzhicaiView;


/**
 * 预制菜评论表
 *
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface DiscussyuzhicaiService extends IService<DiscussyuzhicaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussyuzhicaiVO> selectListVO(Wrapper<DiscussyuzhicaiEntity> wrapper);
   	
   	DiscussyuzhicaiVO selectVO(@Param("ew") Wrapper<DiscussyuzhicaiEntity> wrapper);
   	
   	List<DiscussyuzhicaiView> selectListView(Wrapper<DiscussyuzhicaiEntity> wrapper);
   	
   	DiscussyuzhicaiView selectView(@Param("ew") Wrapper<DiscussyuzhicaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussyuzhicaiEntity> wrapper);
   	

}

