package org.ray.entity;

import lombok.Data;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 角色菜单关联实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_roleMenu")
public class RoleMenu {
	
	@Id
	@GeneratedValue
	private Integer id; // 编号

	@ManyToOne
	@JoinColumn(name="roleId")
	private Role role; // 角色
	
	@ManyToOne
	@JoinColumn(name="menuId")
	private Menu menu; // 菜单
	
}
