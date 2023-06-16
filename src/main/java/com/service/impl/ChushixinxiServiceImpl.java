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


import com.dao.ChushixinxiDao;
import com.entity.ChushixinxiEntity;
import com.service.ChushixinxiService;
import com.entity.vo.ChushixinxiVO;
import com.entity.view.ChushixinxiView;

@Service("chushixinxiService")
public class ChushixinxiServiceImpl extends ServiceImpl<ChushixinxiDao, ChushixinxiEntity> implements ChushixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ChushixinxiEntity> page = this.selectPage(
                new Query<ChushixinxiEntity>(params).getPage(),
                new EntityWrapper<ChushixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ChushixinxiEntity> wrapper) {
		  Page<ChushixinxiView> page =new Query<ChushixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ChushixinxiVO> selectListVO(Wrapper<ChushixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ChushixinxiVO selectVO(Wrapper<ChushixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ChushixinxiView> selectListView(Wrapper<ChushixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ChushixinxiView selectView(Wrapper<ChushixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
