package org.ray.entity;

import java.util.Date;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.Data;
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

/**
 * 报损单
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_damageList")
public class DamageList {

	@Id
	@GeneratedValue
	private Integer id; // 编号

	@Column(length=100)
	private String damageNumber; // 报损单号


	@Temporal(TemporalType.TIMESTAMP)
	private Date damageDate; // 报损日期

	@Transient
	private Date BDamageDate; // 起始时间 搜索用到

	@Transient
	private Date EDamageDate; // 结束时间 搜索用到


	@ManyToOne
	@JoinColumn(name="userId")
	private User user; // 操作用户

	@Column(length=1000)
	private String remarks; // 备注

}
