package org.ray.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 供应商实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_supplier")
public class Supplier {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=200)
	private String name; // 供应商名称
	
	@Column(length=50)
	private String contact; // 联系人
	
	@Column(length=50)
	private String number; // 联系电话
	
	@Column(length=300)
	private String address; // 联系地址
	
	@Column(length=1000)
	private String remarks; // 备注

}
