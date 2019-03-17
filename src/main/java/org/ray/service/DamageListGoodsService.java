package org.ray.service;

import java.util.List;

import org.ray.entity.DamageListGoods;

/**
 * 报损单商品Service接口
 * @author ray
 *
 */
public interface DamageListGoodsService {

	/**
	 * 根据报损单id查询所有报损单商品
	 * @param damageListId
	 * @return
	 */
	public List<DamageListGoods> listByDamageListId(Integer damageListId);


}
