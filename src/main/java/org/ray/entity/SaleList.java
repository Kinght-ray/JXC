package org.ray.entity;

import java.util.Date;
import java.util.List;
import javax.persistence.*;
import lombok.Data;

/**
 * 销售单
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_saleList")
public class SaleList {

	@Id
	@GeneratedValue
	private Integer id; // 编号

	@Column(length=100)
	private String saleNumber; // 销售单号

	@ManyToOne
	@JoinColumn(name="customerId")//设置在customer表中的关联字段(外键)
	private Customer customer; // 客户

	@Temporal(TemporalType.TIMESTAMP)
	private Date saleDate; // 销售日期

	@Transient
	private Date bSaleDate; // 起始时间 搜索用到

	@Transient
	private Date eSaleDate; // 结束时间 搜索用到

	private float amountPayable; // 应付金额

	private float amountPaid; // 实付金额

	private Integer state; // 交易状态 1 已付  2 未付

	@Transient
	private List<SaleListGoods> saleListGoodsList=null; // 销售单商品集合

	@ManyToOne
	@JoinColumn(name="userId")
	private User user; // 操作用户

	@Column(length=1000)
	private String remarks; // 备注

	@Override
	public String toString() {
		final StringBuffer sb = new StringBuffer("SaleList{");
		sb.append("id=").append(id);
		sb.append(", saleNumber='").append(saleNumber).append('\'');
		sb.append(", customer=").append(customer);
		sb.append(", saleDate=").append(saleDate);
		sb.append(", bSaleDate=").append(bSaleDate);
		sb.append(", eSaleDate=").append(eSaleDate);
		sb.append(", amountPayable=").append(amountPayable);
		sb.append(", amountPaid=").append(amountPaid);
		sb.append(", state=").append(state);
		sb.append(", user=").append(user);
		sb.append(", remarks='").append(remarks).append('\'');
		sb.append('}');
		return sb.toString();
	}
}
