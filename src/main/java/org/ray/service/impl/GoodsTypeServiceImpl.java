package org.ray.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.ray.entity.GoodsType;
import org.ray.repository.GoodsTypeRepository;
import org.springframework.stereotype.Service;

import org.ray.service.GoodsTypeService;

/**
 * 商品类别Service实现类
 * @author ray
 *
 */
@Service("goodsTypeService")
public class GoodsTypeServiceImpl implements GoodsTypeService{

	@Resource
	private GoodsTypeRepository goodsTypeRepository;
	
	@Override
	public void save(GoodsType goodsType) {
		goodsTypeRepository.save(goodsType);
	}

	@Override
	public void delete(Integer id) {
		goodsTypeRepository.delete(id);
	}

	@Override
	public List<GoodsType> findByParentId(int parentId) {
		return goodsTypeRepository.findByParentId(parentId);
	}

	@Override
	public GoodsType findById(Integer id) {
		return goodsTypeRepository.findOne(id);
	}

}
