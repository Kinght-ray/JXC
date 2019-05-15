package org.ray.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import lombok.Data;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * 用户实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_user")
public class User {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@NotEmpty(message="请输入用户名！")
	@Column(length=50)
	private String userName; // 用户名
	
	@NotEmpty(message="请输入密码！")
	@Column(length=50)
	private String password; // 密码
	
	@Column(length=50)
	private String trueName; // 真实姓名
	
	@Column(length=1000)
	private String remarks; // 备注
	
	@Transient
	private String roles; 

}
