package com.entity.view;

import com.entity.DiscussyuzhicaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 预制菜评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-04-19 14:57:58
 */
@TableName("discussyuzhicai")
public class DiscussyuzhicaiView  extends DiscussyuzhicaiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscussyuzhicaiView(){
	}
 
 	public DiscussyuzhicaiView(DiscussyuzhicaiEntity discussyuzhicaiEntity){
 	try {
			BeanUtils.copyProperties(this, discussyuzhicaiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
