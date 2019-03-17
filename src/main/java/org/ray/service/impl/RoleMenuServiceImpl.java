package org.ray.service.impl;

import javax.annotation.Resource;

import org.ray.entity.RoleMenu;
import org.ray.repository.RoleMenuRepository;
import org.ray.service.RoleMenuService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 角色权限菜单关联Service实现类
 * @author ray
 *
 */
@Service("roleMenuService")
@Transactional
public class RoleMenuServiceImpl implements RoleMenuService {

	@Resource
	private RoleMenuRepository roleMenuRepository;

	@Override
	public void deleteByRoleId(Integer roleId) {
		roleMenuRepository.deleteByRoleId(roleId);
	}

	@Override
	public void save(RoleMenu roleMenu) {
		roleMenuRepository.save(roleMenu);
	}
	
	
}
