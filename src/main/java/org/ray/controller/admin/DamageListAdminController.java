package org.ray.controller.admin;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.ray.entity.DamageList;
import org.ray.entity.DamageListGoods;
import org.ray.entity.Log;
import org.ray.service.DamageListGoodsService;
import org.ray.service.DamageListService;
import org.ray.util.DateUtil;
import org.ray.util.StringUtil;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.ray.service.LogService;
import org.ray.service.UserService;

/**
 * 报损单Controller类
 * @author ray
 *
 */
@RestController
@RequestMapping("/admin/damageList")
public class DamageListAdminController {

	@Resource
	private DamageListService damageListService;
	
	@Resource
	private DamageListGoodsService damageListGoodsService;
	
	@Resource
	private LogService logService;
	
	@Resource
	private UserService userService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(true);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   //true:允许输入空值，false:不能为空值
	}
	
	/**
	 * 根据条件分页查询报损单信息
	 * @param damageList
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/list")
	@RequiresPermissions(value = { "报损报溢查询" })
	public Map<String,Object> list(DamageList damageList)throws Exception{
		Map<String, Object> resultMap = new HashMap<>();
		List<DamageList> damageListList=damageListService.list(damageList, Direction.DESC, "damageDate");
		resultMap.put("rows", damageListList);
		return resultMap;
	}
	
	/**
	 * 根据报损单id查询所有报损单商品
	 * @param damageListId
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/listGoods")
	@RequiresPermissions(value = { "报损报溢查询" })
	public Map<String,Object> listGoods(Integer damageListId)throws Exception{
		if(damageListId==null){
			return null;
		}
		Map<String, Object> resultMap = new HashMap<>();
		List<DamageListGoods> damageListGoodsList=damageListGoodsService.listByDamageListId(damageListId);
		resultMap.put("rows", damageListGoodsList);
		return resultMap;
	}
	
	
	/**
	 * 获取报损单号
	 * @param type
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/getDamageNumber")
	@RequiresPermissions(value = {"商品报损记录"})
	public String genBillCode(String type)throws Exception{
		StringBuffer biilCodeStr=new StringBuffer();
		biilCodeStr.append("BS");
		biilCodeStr.append(DateUtil.getCurrentDateStr()); // 拼接当前日期
		System.out.println("------------------测试时间节点----------------------");
		System.out.println(biilCodeStr.toString());
		String damageNumber=damageListService.getTodayMaxDamageNumber(); // 获取当天最大的报损单号
		if(damageNumber!=null){
			biilCodeStr.append(StringUtil.formatCode(damageNumber));
		}else{
			biilCodeStr.append("0001");
		}
		return biilCodeStr.toString();
	}
	
	/**
	 * 添加报损单 以及所有报损单商品 以及 修改商品的成本均价
	 * @param damageList
	 * @param goodsJson
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping("/save")
	@RequiresPermissions(value = {"商品报损记录"})
	public Map<String,Object> save(DamageList damageList,String goodsJson)throws Exception{
		Map<String, Object> resultMap = new HashMap<>();
		damageList.setUser(userService.findByUserName((String) SecurityUtils.getSubject().getPrincipal())); // 设置操作用户
		Gson gson = new Gson();
		List<DamageListGoods> plgList=gson.fromJson(goodsJson, new TypeToken<List<DamageListGoods>>(){}.getType());
		damageListService.save(damageList, plgList);
//		System.out.println("------------------------商品报损-----------------------");
		System.out.println(damageList.toString());
		logService.save(new Log(Log.ADD_ACTION,"添加报损单"));
		resultMap.put("success", true);
//		System.out.println("------------------------商品报损-----------------------");
//		System.out.println(resultMap.toString());
		return resultMap;
	}

}
