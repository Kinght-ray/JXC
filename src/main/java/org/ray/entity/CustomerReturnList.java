package org.ray.entity;

import java.util.Date;
import java.util.List;
import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;


/**
 * 客户退货单
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_customerReturnList")
public class CustomerReturnList {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=100)
	private String customerReturnNumber; // 客户退货单号
	
	@ManyToOne
	@JoinColumn(name="customerId")
	private Customer customer; // 客户
	
	@Temporal(TemporalType.TIMESTAMP) 
	private Date customerReturnDate; // 客户退货日期
	
	@Transient
	private Date BCustomerReturnDate; // 起始时间 搜索用到
	
	@Transient
	private Date ECustomerReturnDate; // 结束时间 搜索用到
	
	private float amountPayable; // 应付金额
	
	private float amountPaid; // 实付金额
	
	private Integer state; // 交易状态 1 已付  2 未付
	
	@ManyToOne
	@JoinColumn(name="userId")
	private User user; // 操作用户
	
	@Column(length=1000)
	private String remarks; // 备注
	
	@Transient
	private List<CustomerReturnListGoods> customerReturnListGoodsList=null; // 客户退货单商品集合

}
