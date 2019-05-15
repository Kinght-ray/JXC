package org.ray.entity;



import lombok.Data;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 用户角色关联实体
 * @author ray
 *
 */
@Data
@Entity
@Table(name="t_userRole")
public class UserRole {

	@Id
	@GeneratedValue
	private Integer id; // 编号
	
	@ManyToOne
	@JoinColumn(name="userId")
	private User user; // 用户
	
	@ManyToOne
	@JoinColumn(name="roleId")
	private Role role; // 角色

}
