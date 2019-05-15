package org.ray.entity;

import lombok.Data;

import javax.persistence.*;

/**
 * 报损单商品实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_damageListGoods")
public class DamageListGoods {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@ManyToOne
	@JoinColumn(name="damageListId")
	private DamageList damageList; // 报损单

	@Column(length=50)
	private String code; // 商品编码
	
	
	@Column(length=50)
	private String name; // 商品名称
	
	@Column(length=50)
	private String model; // 商品型号
	
	@ManyToOne
	@JoinColumn(name="typeId")
	private GoodsType type; // 商品类别
	
	@Transient
	private Integer typeId; // 类别id 
	
	private Integer goodsId; // 商品id
	
	@Column(length=10)
	private String unit; // 商品单位
	
	private float price; // 单价
	
	private int num; // 数量
	
	private float total; // 总价

}
