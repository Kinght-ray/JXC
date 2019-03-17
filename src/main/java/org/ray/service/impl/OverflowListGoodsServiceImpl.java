package org.ray.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.ray.entity.OverflowListGoods;
import org.ray.repository.OverflowListGoodsRepository;
import org.springframework.stereotype.Service;

import org.ray.service.OverflowListGoodsService;

/**
 * 报溢单商品Service实现类
 * @author ray
 *
 */
@Service("overflowListGoodsService")
public class OverflowListGoodsServiceImpl implements OverflowListGoodsService{

	@Resource
	private OverflowListGoodsRepository overflowListGoodsRepository;

	@Override
	public List<OverflowListGoods> listByOverflowListId(Integer overflowListId) {
		return overflowListGoodsRepository.listByOverflowListId(overflowListId);
	}

	

}
