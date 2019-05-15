package org.ray.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

/**
 * 客户实体
 * @author ray
 *
 */


@Data
@Entity
@Table(name="t_customer")
public class Customer {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@Column(length=200)
	private String name; // 供应商名称
	
	@Column(length=50)
	private String contact; // 联系人
	
	@Column(length=50)
	private String number; // 联系电话
	
	@Column(length=300)
	private String address; // 联系地址
	
	@Column(length=1000)
	private String remarks; // 备注

	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,orphanRemoval = true)
	private List<CustomerReturnList> customerReturnListList;

	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.LAZY,orphanRemoval = true)
	private List<SaleList> saleList;

}
