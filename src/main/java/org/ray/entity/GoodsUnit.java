package org.ray.entity;

import lombok.Data;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 商品单位实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_goodsunit")
public class GoodsUnit {
	
	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=10)
	private String name; // 商品单位名称

}
