package com.dao;

import com.entity.ChushixinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChushixinxiVO;
import com.entity.view.ChushixinxiView;


/**
 * 厨师信息
 * 
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
public interface ChushixinxiDao extends BaseMapper<ChushixinxiEntity> {
	
	List<ChushixinxiVO> selectListVO(@Param("ew") Wrapper<ChushixinxiEntity> wrapper);
	
	ChushixinxiVO selectVO(@Param("ew") Wrapper<ChushixinxiEntity> wrapper);
	
	List<ChushixinxiView> selectListView(@Param("ew") Wrapper<ChushixinxiEntity> wrapper);

	List<ChushixinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ChushixinxiEntity> wrapper);
	
	ChushixinxiView selectView(@Param("ew") Wrapper<ChushixinxiEntity> wrapper);
	

}
