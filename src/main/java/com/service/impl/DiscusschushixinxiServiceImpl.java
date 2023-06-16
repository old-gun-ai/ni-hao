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


import com.dao.DiscusschushixinxiDao;
import com.entity.DiscusschushixinxiEntity;
import com.service.DiscusschushixinxiService;
import com.entity.vo.DiscusschushixinxiVO;
import com.entity.view.DiscusschushixinxiView;

@Service("discusschushixinxiService")
public class DiscusschushixinxiServiceImpl extends ServiceImpl<DiscusschushixinxiDao, DiscusschushixinxiEntity> implements DiscusschushixinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschushixinxiEntity> page = this.selectPage(
                new Query<DiscusschushixinxiEntity>(params).getPage(),
                new EntityWrapper<DiscusschushixinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschushixinxiEntity> wrapper) {
		  Page<DiscusschushixinxiView> page =new Query<DiscusschushixinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschushixinxiVO> selectListVO(Wrapper<DiscusschushixinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschushixinxiVO selectVO(Wrapper<DiscusschushixinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschushixinxiView> selectListView(Wrapper<DiscusschushixinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschushixinxiView selectView(Wrapper<DiscusschushixinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
