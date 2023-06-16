package com.entity.view;

import com.entity.YuzhicaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预制菜
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
@TableName("yuzhicai")
public class YuzhicaiView  extends YuzhicaiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public YuzhicaiView(){
	}
 
 	public YuzhicaiView(YuzhicaiEntity yuzhicaiEntity){
 	try {
			BeanUtils.copyProperties(this, yuzhicaiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
