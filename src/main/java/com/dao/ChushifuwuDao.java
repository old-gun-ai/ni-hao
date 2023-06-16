package com.dao;

import com.entity.ChushifuwuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ChushifuwuVO;
import com.entity.view.ChushifuwuView;


/**
 * 厨师服务
 * 
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
public interface ChushifuwuDao extends BaseMapper<ChushifuwuEntity> {
	
	List<ChushifuwuVO> selectListVO(@Param("ew") Wrapper<ChushifuwuEntity> wrapper);
	
	ChushifuwuVO selectVO(@Param("ew") Wrapper<ChushifuwuEntity> wrapper);
	
	List<ChushifuwuView> selectListView(@Param("ew") Wrapper<ChushifuwuEntity> wrapper);

	List<ChushifuwuView> selectListView(Pagination page,@Param("ew") Wrapper<ChushifuwuEntity> wrapper);
	
	ChushifuwuView selectView(@Param("ew") Wrapper<ChushifuwuEntity> wrapper);
	

}
