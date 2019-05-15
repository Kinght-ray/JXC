package org.ray.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;

/**
 * 销售单商品实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_saleListGoods")
public class SaleListGoods {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@ManyToOne
	@JoinColumn(name="saleListId")
	private SaleList saleList; // 销售单

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

	@Transient
	private String codeOrName; // 查询用到  根据商品编码或者商品名称查询

}
