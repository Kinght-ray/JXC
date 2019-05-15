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
 * 报溢单
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_overflowList")
public class OverflowList {

	@Id
	@GeneratedValue
	private Integer id; // 编号

	@Column(length=100)
	private String overflowNumber; // 报溢单号


	@Temporal(TemporalType.TIMESTAMP)
	private Date overflowDate; // 报溢日期

	@Transient
	private Date BOverflowDate; // 起始时间 搜索用到

	@Transient
	private Date EOverflowDate; // 结束时间 搜索用到


	@ManyToOne
	@JoinColumn(name="userId")
	private User user; // 操作用户

	@Column(length=1000)
	private String remarks; // 备注

}
