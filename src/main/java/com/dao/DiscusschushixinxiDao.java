package com.dao;

import com.entity.DiscusschushixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusschushixinxiVO;
import com.entity.view.DiscusschushixinxiView;


/**
 * 厨师信息评论表
 * 
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface DiscusschushixinxiDao extends BaseMapper<DiscusschushixinxiEntity> {
	
	List<DiscusschushixinxiVO> selectListVO(@Param("ew") Wrapper<DiscusschushixinxiEntity> wrapper);
	
	DiscusschushixinxiVO selectVO(@Param("ew") Wrapper<DiscusschushixinxiEntity> wrapper);
	
	List<DiscusschushixinxiView> selectListView(@Param("ew") Wrapper<DiscusschushixinxiEntity> wrapper);

	List<DiscusschushixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusschushixinxiEntity> wrapper);
	
	DiscusschushixinxiView selectView(@Param("ew") Wrapper<DiscusschushixinxiEntity> wrapper);
	

}
