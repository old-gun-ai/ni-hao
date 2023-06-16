package com.entity.view;

import com.entity.ChushixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 厨师信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
@TableName("chushixinxi")
public class ChushixinxiView  extends ChushixinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ChushixinxiView(){
	}
 
 	public ChushixinxiView(ChushixinxiEntity chushixinxiEntity){
 	try {
			BeanUtils.copyProperties(this, chushixinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
