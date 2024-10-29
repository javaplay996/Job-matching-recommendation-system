package com.entity.model;

import com.entity.GangweixinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 岗位信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-03-18 22:50:34
 */
public class GangweixinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 工作环境
	 */
	
	private String gongzuohuanjing;
		
	/**
	 * 岗位类型
	 */
	
	private String gangweileixing;
		
	/**
	 * 技能要求
	 */
	
	private String jinengyaoqiu;
		
	/**
	 * 薪资范围
	 */
	
	private String xinzifanwei;
		
	/**
	 * 工作性质
	 */
	
	private String gongzuoxingzhi;
		
	/**
	 * 工作地点
	 */
	
	private String gongzuodidian;
		
	/**
	 * 经验要求
	 */
	
	private String jingyanyaoqiu;
		
	/**
	 * 最低学历
	 */
	
	private String zuidixueli;
		
	/**
	 * 企业邮箱
	 */
	
	private String qiyeyouxiang;
		
	/**
	 * 企业账号
	 */
	
	private String qiyezhanghao;
		
	/**
	 * 企业名称
	 */
	
	private String qiyemingcheng;
		
	/**
	 * 负责人
	 */
	
	private String fuzeren;
		
	/**
	 * 联系方式
	 */
	
	private String lianxifangshi;
		
	/**
	 * 职位描述
	 */
	
	private String zhiweimiaoshu;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：工作环境
	 */
	 
	public void setGongzuohuanjing(String gongzuohuanjing) {
		this.gongzuohuanjing = gongzuohuanjing;
	}
	
	/**
	 * 获取：工作环境
	 */
	public String getGongzuohuanjing() {
		return gongzuohuanjing;
	}
				
	
	/**
	 * 设置：岗位类型
	 */
	 
	public void setGangweileixing(String gangweileixing) {
		this.gangweileixing = gangweileixing;
	}
	
	/**
	 * 获取：岗位类型
	 */
	public String getGangweileixing() {
		return gangweileixing;
	}
				
	
	/**
	 * 设置：技能要求
	 */
	 
	public void setJinengyaoqiu(String jinengyaoqiu) {
		this.jinengyaoqiu = jinengyaoqiu;
	}
	
	/**
	 * 获取：技能要求
	 */
	public String getJinengyaoqiu() {
		return jinengyaoqiu;
	}
				
	
	/**
	 * 设置：薪资范围
	 */
	 
	public void setXinzifanwei(String xinzifanwei) {
		this.xinzifanwei = xinzifanwei;
	}
	
	/**
	 * 获取：薪资范围
	 */
	public String getXinzifanwei() {
		return xinzifanwei;
	}
				
	
	/**
	 * 设置：工作性质
	 */
	 
	public void setGongzuoxingzhi(String gongzuoxingzhi) {
		this.gongzuoxingzhi = gongzuoxingzhi;
	}
	
	/**
	 * 获取：工作性质
	 */
	public String getGongzuoxingzhi() {
		return gongzuoxingzhi;
	}
				
	
	/**
	 * 设置：工作地点
	 */
	 
	public void setGongzuodidian(String gongzuodidian) {
		this.gongzuodidian = gongzuodidian;
	}
	
	/**
	 * 获取：工作地点
	 */
	public String getGongzuodidian() {
		return gongzuodidian;
	}
				
	
	/**
	 * 设置：经验要求
	 */
	 
	public void setJingyanyaoqiu(String jingyanyaoqiu) {
		this.jingyanyaoqiu = jingyanyaoqiu;
	}
	
	/**
	 * 获取：经验要求
	 */
	public String getJingyanyaoqiu() {
		return jingyanyaoqiu;
	}
				
	
	/**
	 * 设置：最低学历
	 */
	 
	public void setZuidixueli(String zuidixueli) {
		this.zuidixueli = zuidixueli;
	}
	
	/**
	 * 获取：最低学历
	 */
	public String getZuidixueli() {
		return zuidixueli;
	}
				
	
	/**
	 * 设置：企业邮箱
	 */
	 
	public void setQiyeyouxiang(String qiyeyouxiang) {
		this.qiyeyouxiang = qiyeyouxiang;
	}
	
	/**
	 * 获取：企业邮箱
	 */
	public String getQiyeyouxiang() {
		return qiyeyouxiang;
	}
				
	
	/**
	 * 设置：企业账号
	 */
	 
	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}
	
	/**
	 * 获取：企业账号
	 */
	public String getQiyezhanghao() {
		return qiyezhanghao;
	}
				
	
	/**
	 * 设置：企业名称
	 */
	 
	public void setQiyemingcheng(String qiyemingcheng) {
		this.qiyemingcheng = qiyemingcheng;
	}
	
	/**
	 * 获取：企业名称
	 */
	public String getQiyemingcheng() {
		return qiyemingcheng;
	}
				
	
	/**
	 * 设置：负责人
	 */
	 
	public void setFuzeren(String fuzeren) {
		this.fuzeren = fuzeren;
	}
	
	/**
	 * 获取：负责人
	 */
	public String getFuzeren() {
		return fuzeren;
	}
				
	
	/**
	 * 设置：联系方式
	 */
	 
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
				
	
	/**
	 * 设置：职位描述
	 */
	 
	public void setZhiweimiaoshu(String zhiweimiaoshu) {
		this.zhiweimiaoshu = zhiweimiaoshu;
	}
	
	/**
	 * 获取：职位描述
	 */
	public String getZhiweimiaoshu() {
		return zhiweimiaoshu;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
