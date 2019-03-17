package org.ray.service;

import java.util.List;

import org.ray.entity.OverflowListGoods;

/**
 * 报溢单商品Service接口
 * @authorray
 *
 */
public interface OverflowListGoodsService {

	/**
	 * 根据报溢单id查询所有报溢单商品
	 * @param overflowListId
	 * @return
	 */
	public List<OverflowListGoods> listByOverflowListId(Integer overflowListId);


}
