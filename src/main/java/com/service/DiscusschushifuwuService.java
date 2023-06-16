package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusschushifuwuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusschushifuwuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusschushifuwuView;


/**
 * 厨师服务评论表
 *
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface DiscusschushifuwuService extends IService<DiscusschushifuwuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusschushifuwuVO> selectListVO(Wrapper<DiscusschushifuwuEntity> wrapper);
   	
   	DiscusschushifuwuVO selectVO(@Param("ew") Wrapper<DiscusschushifuwuEntity> wrapper);
   	
   	List<DiscusschushifuwuView> selectListView(Wrapper<DiscusschushifuwuEntity> wrapper);
   	
   	DiscusschushifuwuView selectView(@Param("ew") Wrapper<DiscusschushifuwuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusschushifuwuEntity> wrapper);
   	

}

