package com.dao;

import com.entity.DiscusschushifuwuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusschushifuwuVO;
import com.entity.view.DiscusschushifuwuView;


/**
 * 厨师服务评论表
 * 
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
public interface DiscusschushifuwuDao extends BaseMapper<DiscusschushifuwuEntity> {
	
	List<DiscusschushifuwuVO> selectListVO(@Param("ew") Wrapper<DiscusschushifuwuEntity> wrapper);
	
	DiscusschushifuwuVO selectVO(@Param("ew") Wrapper<DiscusschushifuwuEntity> wrapper);
	
	List<DiscusschushifuwuView> selectListView(@Param("ew") Wrapper<DiscusschushifuwuEntity> wrapper);

	List<DiscusschushifuwuView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusschushifuwuEntity> wrapper);
	
	DiscusschushifuwuView selectView(@Param("ew") Wrapper<DiscusschushifuwuEntity> wrapper);
	

}
