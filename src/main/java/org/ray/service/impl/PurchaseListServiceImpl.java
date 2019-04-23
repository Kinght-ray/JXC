package org.ray.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.ray.entity.Goods;
import org.ray.entity.PurchaseList;
import org.ray.entity.PurchaseListGoods;
import org.ray.repository.GoodsRepository;
import org.ray.repository.GoodsTypeRepository;
import org.ray.repository.PurchaseListGoodsRepository;
import org.ray.repository.PurchaseListRepository;
import org.ray.util.MathUtil;
import org.ray.util.StringUtil;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import org.ray.service.PurchaseListService;

/**
 * 进货单Service实现类
 * @author ray
 *
 */
@Service("purchaseListService")
@Transactional
public class PurchaseListServiceImpl implements PurchaseListService{

	@Resource
	private PurchaseListRepository purchaseListRepository;
	
	@Resource
	private PurchaseListGoodsRepository purchaseListGoodsRepository;
	
	@Resource
	private GoodsRepository goodsRepository;
	
	@Resource
	private GoodsTypeRepository goodsTypeRepository;
	
	@Override
	public String getTodayMaxPurchaseNumber() {
		return purchaseListRepository.getTodayMaxPurchaseNumber();
	}

	@Transactional
	public void save(PurchaseList purchaseList, List<PurchaseListGoods> purchaseListGoodsList) {
		// 保存每个进货单商品
		for(PurchaseListGoods purchaseListGoods:purchaseListGoodsList){
			purchaseListGoods.setType(goodsTypeRepository.findOne(purchaseListGoods.getTypeId())); // 设置类别
			purchaseListGoods.setPurchaseList(purchaseList); // 设置采购单
			purchaseListGoodsRepository.save(purchaseListGoods);
			// 修改商品库存 和 成本均价 以及上次进价
			Goods goods=goodsRepository.findOne(purchaseListGoods.getGoodsId());
			// 计算成本均价
			float avePurchasingPrice=(goods.getPurchasingPrice()*goods.getInventoryQuantity()+purchaseListGoods.getPrice()*purchaseListGoods.getNum())/(goods.getInventoryQuantity()+purchaseListGoods.getNum());
			goods.setPurchasingPrice(MathUtil.format2Bit(avePurchasingPrice));
			goods.setInventoryQuantity(goods.getInventoryQuantity()+purchaseListGoods.getNum());
			goods.setLastPurchasingPrice(purchaseListGoods.getPrice());
			goods.setState(2);
			goodsRepository.save(goods);
		}
		purchaseListRepository.save(purchaseList); // 保存进货单
	}

	@Override
	public List<PurchaseList> list(PurchaseList purchaseList, Direction direction,
			String... properties) {
		return purchaseListRepository.findAll(new Specification<PurchaseList>(){

			@Override
			public Predicate toPredicate(Root<PurchaseList> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				Predicate predicate=cb.conjunction();
				if(purchaseList!=null){
					if(purchaseList.getSupplier()!=null && purchaseList.getSupplier().getId()!=null){
						predicate.getExpressions().add(cb.equal(root.get("supplier").get("id"), purchaseList.getSupplier().getId()));
					}
					if(StringUtil.isNotEmpty(purchaseList.getPurchaseNumber())){
						predicate.getExpressions().add(cb.like(root.get("purchaseNumber"), "%"+purchaseList.getPurchaseNumber().trim()+"%"));
					}
					if(purchaseList.getState()!=null){
						predicate.getExpressions().add(cb.equal(root.get("state"), purchaseList.getState()));
					}
					if(purchaseList.getBPurchaseDate()!=null){
						predicate.getExpressions().add(cb.greaterThanOrEqualTo(root.get("purchaseDate"), purchaseList.getBPurchaseDate()));
					}
					if(purchaseList.getEPurchaseDate()!=null){
						predicate.getExpressions().add(cb.lessThanOrEqualTo(root.get("purchaseDate"), purchaseList.getEPurchaseDate()));
					}
				}
				return predicate;
			}
		  },new Sort(direction, properties));
	}

	@Override
	public void delete(Integer id) {
		purchaseListGoodsRepository.deleteByPurchaseListId(id);
		purchaseListRepository.delete(id);
	}

	@Override
	public PurchaseList findById(Integer id) {
		return purchaseListRepository.findOne(id);
	}

	@Override
	public void update(PurchaseList purchaseList) {
		purchaseListRepository.save(purchaseList);
	}



}
