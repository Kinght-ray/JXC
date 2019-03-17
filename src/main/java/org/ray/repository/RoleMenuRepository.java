package org.ray.repository;

import org.ray.entity.RoleMenu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 * 角色权限菜单Repository接口
 * @author ray
 *
 */
public interface RoleMenuRepository extends JpaRepository<RoleMenu, Integer>,JpaSpecificationExecutor<RoleMenu>{

	/**
	 * 根据用户id删除所有关联信息
	 * @param id
	 */
	@Query(value="delete from t_role_menu where role_id=?1",nativeQuery=true)
	@Modifying
	public void deleteByRoleId(Integer roleId);
}
