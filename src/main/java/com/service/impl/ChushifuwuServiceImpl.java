package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.ChushifuwuDao;
import com.entity.ChushifuwuEntity;
import com.service.ChushifuwuService;
import com.entity.vo.ChushifuwuVO;
import com.entity.view.ChushifuwuView;

@Service("chushifuwuService")
public class ChushifuwuServiceImpl extends ServiceImpl<ChushifuwuDao, ChushifuwuEntity> implements ChushifuwuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChushifuwuEntity> page = this.selectPage(
                new Query<ChushifuwuEntity>(params).getPage(),
                new EntityWrapper<ChushifuwuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChushifuwuEntity> wrapper) {
		  Page<ChushifuwuView> page =new Query<ChushifuwuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChushifuwuVO> selectListVO(Wrapper<ChushifuwuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChushifuwuVO selectVO(Wrapper<ChushifuwuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChushifuwuView> selectListView(Wrapper<ChushifuwuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChushifuwuView selectView(Wrapper<ChushifuwuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
