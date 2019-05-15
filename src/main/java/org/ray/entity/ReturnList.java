package org.ray.entity;

import java.util.Date;
import java.util.List;
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
import lombok.Data;


/**
 * 退货单
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_returnList")
public class ReturnList {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=100)
	private String returnNumber; // 退货单号
	
	@ManyToOne
	@JoinColumn(name="supplierId")
	private Supplier supplier; // 供应商
	
	@Temporal(TemporalType.TIMESTAMP) 
	private Date returnDate; // 退货日期
	
	private float amountPayable; // 应付金额
	
	private float amountPaid; // 实付金额
	
	private Integer state; // 交易状态 1 已付  2 未付
	
	@ManyToOne
	@JoinColumn(name="userId")
	private User user; // 操作用户
	
	@Column(length=1000)
	private String remarks; // 备注
	
	@Transient
	private Date BReturnDate; // 起始时间 搜索用到
	
	@Transient
	private Date EReturnDate; // 结束时间 搜索用到
	
	@Transient
	private List<ReturnListGoods> returnListGoodsList=null; // 退货单商品集合

}
