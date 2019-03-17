package org.ray.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.ray.entity.GoodsUnit;
import org.ray.repository.GoodsUnitRepository;
import org.springframework.stereotype.Service;

import org.ray.service.GoodsUnitService;

/**
 * 商品单位Service实现类
 * @author ray
 *
 */
@Service("goodsUnitService")
public class GoodsUnitServiceImpl implements GoodsUnitService{

	@Resource
	private GoodsUnitRepository goodsUnitRepository;
	
	@Override
	public List<GoodsUnit> listAll() {
		return goodsUnitRepository.findAll();
	}

	@Override
	public void save(GoodsUnit goodsUnit) {
		goodsUnitRepository.save(goodsUnit);
	}

	@Override
	public void delete(Integer id) {
		goodsUnitRepository.delete(id);
	}

	@Override
	public GoodsUnit findById(Integer id) {
		return goodsUnitRepository.findOne(id);
	}

}
