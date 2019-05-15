package org.ray.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 菜单实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_menu")
public class Menu {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=50)
	private String name; // 菜单名称
	
	@Column(length=200)
	private String url; // 菜单地址
	
	private Integer state; // 菜单节点类型 1 根节点 0 叶子节点
	
	
	@Column(length=100)
	private String icon; // 图标
	
	private Integer PId; // 父菜单Id

}
