package org.ray.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;

/**
 * 系统日志实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_log")
public class Log {

	public final static String LOGIN_ACTION="登录操作";
	public final static String LOGOUT_ACTION="注销操作";
	public final static String SEARCH_ACTION="查询操作";
	public final static String UPDATE_ACTION="更新操作";
	public final static String ADD_ACTION="添加操作";
	public final static String DELETE_ACTION="删除操作";
	
	
	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=100)
	private String type; // 日志类型
	
	@ManyToOne
	@JoinColumn(name="userId")
	private User user; // 操作用户
	
	@Column(length=1000)
	private String content; // 操作内容
	
	@Temporal(TemporalType.TIMESTAMP) 
	private Date time; // 操作时间

	@Transient
	private Date Btime; // 起始时间  搜索用到
	
	@Transient
	private Date Etime; // 结束时间  搜索用到
	

	public Log() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Log(String type,String content) {
		super();
		this.type = type;
		this.content = content;
	}
}
