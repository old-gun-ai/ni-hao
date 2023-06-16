package com.entity.model;

import com.entity.ChushifuwuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 厨师服务
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
public class ChushifuwuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 服务封面
	 */
	
	private String fuwufengmian;
		
	/**
	 * 收费标准
	 */
	
	private String shoufeibiaozhun;
		
	/**
	 * 服务内容
	 */
	
	private String fuwuneirong;
		
	/**
	 * 厨师姓名
	 */
	
	private String chushixingming;
		
	/**
	 * 更新日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date gengxinriqi;
				
	
	/**
	 * 设置：服务封面
	 */
	 
	public void setFuwufengmian(String fuwufengmian) {
		this.fuwufengmian = fuwufengmian;
	}
	
	/**
	 * 获取：服务封面
	 */
	public String getFuwufengmian() {
		return fuwufengmian;
	}
				
	
	/**
	 * 设置：收费标准
	 */
	 
	public void setShoufeibiaozhun(String shoufeibiaozhun) {
		this.shoufeibiaozhun = shoufeibiaozhun;
	}
	
	/**
	 * 获取：收费标准
	 */
	public String getShoufeibiaozhun() {
		return shoufeibiaozhun;
	}
				
	
	/**
	 * 设置：服务内容
	 */
	 
	public void setFuwuneirong(String fuwuneirong) {
		this.fuwuneirong = fuwuneirong;
	}
	
	/**
	 * 获取：服务内容
	 */
	public String getFuwuneirong() {
		return fuwuneirong;
	}
				
	
	/**
	 * 设置：厨师姓名
	 */
	 
	public void setChushixingming(String chushixingming) {
		this.chushixingming = chushixingming;
	}
	
	/**
	 * 获取：厨师姓名
	 */
	public String getChushixingming() {
		return chushixingming;
	}
				
	
	/**
	 * 设置：更新日期
	 */
	 
	public void setGengxinriqi(Date gengxinriqi) {
		this.gengxinriqi = gengxinriqi;
	}
	
	/**
	 * 获取：更新日期
	 */
	public Date getGengxinriqi() {
		return gengxinriqi;
	}
			
}
