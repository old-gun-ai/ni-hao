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


import com.dao.DiscussyuzhicaiDao;
import com.entity.DiscussyuzhicaiEntity;
import com.service.DiscussyuzhicaiService;
import com.entity.vo.DiscussyuzhicaiVO;
import com.entity.view.DiscussyuzhicaiView;

@Service("discussyuzhicaiService")
public class DiscussyuzhicaiServiceImpl extends ServiceImpl<DiscussyuzhicaiDao, DiscussyuzhicaiEntity> implements DiscussyuzhicaiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussyuzhicaiEntity> page = this.selectPage(
                new Query<DiscussyuzhicaiEntity>(params).getPage(),
                new EntityWrapper<DiscussyuzhicaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussyuzhicaiEntity> wrapper) {
		  Page<DiscussyuzhicaiView> page =new Query<DiscussyuzhicaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussyuzhicaiVO> selectListVO(Wrapper<DiscussyuzhicaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussyuzhicaiVO selectVO(Wrapper<DiscussyuzhicaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussyuzhicaiView> selectListView(Wrapper<DiscussyuzhicaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussyuzhicaiView selectView(Wrapper<DiscussyuzhicaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
