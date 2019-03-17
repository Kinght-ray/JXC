package org.ray.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.ray.entity.DamageListGoods;
import org.ray.repository.DamageListGoodsRepository;
import org.ray.service.DamageListGoodsService;
import org.springframework.stereotype.Service;

/**
 * 报损单商品Service实现类
 * @author ray
 *
 */
@Service("damageListGoodsService")
public class DamageListGoodsServiceImpl implements DamageListGoodsService {

	@Resource
	private DamageListGoodsRepository damageListGoodsRepository;

	@Override
	public List<DamageListGoods> listByDamageListId(Integer damageListId) {
		return damageListGoodsRepository.listByDamageListId(damageListId);
	}

	

}
