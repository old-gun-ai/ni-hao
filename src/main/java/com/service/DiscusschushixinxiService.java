package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusschushixinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusschushixinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusschushixinxiView;


/**
 * 厨师信息评论表
 *
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface DiscusschushixinxiService extends IService<DiscusschushixinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschushixinxiVO> selectListVO(Wrapper<DiscusschushixinxiEntity> wrapper);
   	
   	DiscusschushixinxiVO selectVO(@Param("ew") Wrapper<DiscusschushixinxiEntity> wrapper);
   	
   	List<DiscusschushixinxiView> selectListView(Wrapper<DiscusschushixinxiEntity> wrapper);
   	
   	DiscusschushixinxiView selectView(@Param("ew") Wrapper<DiscusschushixinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusschushixinxiEntity> wrapper);
   	

}

