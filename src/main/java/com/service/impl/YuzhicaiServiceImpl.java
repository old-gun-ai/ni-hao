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


import com.dao.YuzhicaiDao;
import com.entity.YuzhicaiEntity;
import com.service.YuzhicaiService;
import com.entity.vo.YuzhicaiVO;
import com.entity.view.YuzhicaiView;

@Service("yuzhicaiService")
public class YuzhicaiServiceImpl extends ServiceImpl<YuzhicaiDao, YuzhicaiEntity> implements YuzhicaiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<YuzhicaiEntity> page = this.selectPage(
                new Query<YuzhicaiEntity>(params).getPage(),
                new EntityWrapper<YuzhicaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<YuzhicaiEntity> wrapper) {
		  Page<YuzhicaiView> page =new Query<YuzhicaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<YuzhicaiVO> selectListVO(Wrapper<YuzhicaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public YuzhicaiVO selectVO(Wrapper<YuzhicaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<YuzhicaiView> selectListView(Wrapper<YuzhicaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public YuzhicaiView selectView(Wrapper<YuzhicaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
