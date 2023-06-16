package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 厨师信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-04-19 14:57:57
 */
@TableName("chushixinxi")
public class ChushixinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ChushixinxiEntity() {
		
	}
	
	public ChushixinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 厨师姓名
	 */
					
	private String chushixingming;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
