package com.dao;

import com.entity.DiscussyuzhicaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussyuzhicaiVO;
import com.entity.view.DiscussyuzhicaiView;


/**
 * 预制菜评论表
 * 
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface DiscussyuzhicaiDao extends BaseMapper<DiscussyuzhicaiEntity> {
	
	List<DiscussyuzhicaiVO> selectListVO(@Param("ew") Wrapper<DiscussyuzhicaiEntity> wrapper);
	
	DiscussyuzhicaiVO selectVO(@Param("ew") Wrapper<DiscussyuzhicaiEntity> wrapper);
	
	List<DiscussyuzhicaiView> selectListView(@Param("ew") Wrapper<DiscussyuzhicaiEntity> wrapper);

	List<DiscussyuzhicaiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussyuzhicaiEntity> wrapper);
	
	DiscussyuzhicaiView selectView(@Param("ew") Wrapper<DiscussyuzhicaiEntity> wrapper);
	

}
