package com.entity.model;

import com.entity.ChushixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 厨师信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
public class ChushixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 年龄
	 */
	
	private Integer nianling;
		
	/**
	 * 手机号码
	 */
	
	private String shoujihaoma;
		
	/**
	 * 籍贯
	 */
	
	private String jiguan;
		
	/**
	 * 工作经验
	 */
	
	private String gongzuojingyan;
		
	/**
	 * 头像
	 */
	
	private String touxiang;
		
	/**
	 * 学历
	 */
	
	private String xueli;
		
	/**
	 * 烹饪技能
	 */
	
	private String pengrenjineng;
		
	/**
	 * 工作履历
	 */
	
	private String gongzuolvli;
		
	/**
	 * 荣誉奖项
	 */
	
	private String rongyujiangxiang;
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：年龄
	 */
	 
	public void setNianling(Integer nianling) {
		this.nianling = nianling;
	}
	
	/**
	 * 获取：年龄
	 */
	public Integer getNianling() {
		return nianling;
	}
				
	
	/**
	 * 设置：手机号码
	 */
	 
	public void setShoujihaoma(String shoujihaoma) {
		this.shoujihaoma = shoujihaoma;
	}
	
	/**
	 * 获取：手机号码
	 */
	public String getShoujihaoma() {
		return shoujihaoma;
	}
				
	
	/**
	 * 设置：籍贯
	 */
	 
	public void setJiguan(String jiguan) {
		this.jiguan = jiguan;
	}
	
	/**
	 * 获取：籍贯
	 */
	public String getJiguan() {
		return jiguan;
	}
				
	
	/**
	 * 设置：工作经验
	 */
	 
	public void setGongzuojingyan(String gongzuojingyan) {
		this.gongzuojingyan = gongzuojingyan;
	}
	
	/**
	 * 获取：工作经验
	 */
	public String getGongzuojingyan() {
		return gongzuojingyan;
	}
				
	
	/**
	 * 设置：头像
	 */
	 
	public void setTouxiang(String touxiang) {
		this.touxiang = touxiang;
	}
	
	/**
	 * 获取：头像
	 */
	public String getTouxiang() {
		return touxiang;
	}
				
	
	/**
	 * 设置：学历
	 */
	 
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	
	/**
	 * 获取：学历
	 */
	public String getXueli() {
		return xueli;
	}
				
	
	/**
	 * 设置：烹饪技能
	 */
	 
	public void setPengrenjineng(String pengrenjineng) {
		this.pengrenjineng = pengrenjineng;
	}
	
	/**
	 * 获取：烹饪技能
	 */
	public String getPengrenjineng() {
		return pengrenjineng;
	}
				
	
	/**
	 * 设置：工作履历
	 */
	 
	public void setGongzuolvli(String gongzuolvli) {
		this.gongzuolvli = gongzuolvli;
	}
	
	/**
	 * 获取：工作履历
	 */
	public String getGongzuolvli() {
		return gongzuolvli;
	}
				
	
	/**
	 * 设置：荣誉奖项
	 */
	 
	public void setRongyujiangxiang(String rongyujiangxiang) {
		this.rongyujiangxiang = rongyujiangxiang;
	}
	
	/**
	 * 获取：荣誉奖项
	 */
	public String getRongyujiangxiang() {
		return rongyujiangxiang;
	}
			
}
