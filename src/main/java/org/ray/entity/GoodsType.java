package org.ray.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 商品类别实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_goodstype")
public class GoodsType {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=50)
	private String name; // 类别名称
	
	private Integer state; // 菜单节点类型 1 根节点 0 叶子节点
	
	@Column(length=100)
	private String icon; // 图标
	
	private Integer P_Id; // 父菜单Id

}
