package com.dao;

import com.entity.YuzhicaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YuzhicaiVO;
import com.entity.view.YuzhicaiView;


/**
 * 预制菜
 * 
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface YuzhicaiDao extends BaseMapper<YuzhicaiEntity> {
	
	List<YuzhicaiVO> selectListVO(@Param("ew") Wrapper<YuzhicaiEntity> wrapper);
	
	YuzhicaiVO selectVO(@Param("ew") Wrapper<YuzhicaiEntity> wrapper);
	
	List<YuzhicaiView> selectListView(@Param("ew") Wrapper<YuzhicaiEntity> wrapper);

	List<YuzhicaiView> selectListView(Pagination page,@Param("ew") Wrapper<YuzhicaiEntity> wrapper);
	
	YuzhicaiView selectView(@Param("ew") Wrapper<YuzhicaiEntity> wrapper);
	

}
