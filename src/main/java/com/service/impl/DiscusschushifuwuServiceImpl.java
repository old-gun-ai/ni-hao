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


import com.dao.DiscusschushifuwuDao;
import com.entity.DiscusschushifuwuEntity;
import com.service.DiscusschushifuwuService;
import com.entity.vo.DiscusschushifuwuVO;
import com.entity.view.DiscusschushifuwuView;

@Service("discusschushifuwuService")
public class DiscusschushifuwuServiceImpl extends ServiceImpl<DiscusschushifuwuDao, DiscusschushifuwuEntity> implements DiscusschushifuwuService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusschushifuwuEntity> page = this.selectPage(
                new Query<DiscusschushifuwuEntity>(params).getPage(),
                new EntityWrapper<DiscusschushifuwuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusschushifuwuEntity> wrapper) {
		  Page<DiscusschushifuwuView> page =new Query<DiscusschushifuwuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusschushifuwuVO> selectListVO(Wrapper<DiscusschushifuwuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusschushifuwuVO selectVO(Wrapper<DiscusschushifuwuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusschushifuwuView> selectListView(Wrapper<DiscusschushifuwuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusschushifuwuView selectView(Wrapper<DiscusschushifuwuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
