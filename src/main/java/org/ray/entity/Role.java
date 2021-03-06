package org.ray.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 角色实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_role")
public class Role {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=50)
	private String name; // 角色名称
	
	@Column(length=1000)
	private String remarks; // 备注

}
