package com.ljw.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ljw.dto.Bill;
import com.ljw.dto.Orderr;
import com.ljw.dto.Shop;
import com.ljw.dto.User;
import com.ljw.mapper.UserMapper;
import com.ljw.service.UserService;
import com.ljw.util.MD5keyBean;

import ch.qos.logback.core.joran.util.beans.BeanUtil;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userService;

	// 主页面
	@RequestMapping("toMain")
	public String main(HttpServletRequest request) {

		Object user_id = request.getSession().getAttribute("user_id");
		User uu = userService.getUserObj(user_id);
		request.setAttribute("uu", uu);
		return "main/main";
	}

	// 去注册页面 1管理员 2普通用户
	@RequestMapping("toRegister")
	public String toRegister() {

		return "register/register";
	}

	// 执行注册 1管理员 2普通用户
	@ResponseBody
	@RequestMapping("register")
	public Map<String, String> register(User user) {
		
		MD5keyBean md5keyBean = new MD5keyBean();
		User uu = userService.getuserRegister(user);
		// 创建Map集合对象，存放不合法的提示信息
		Map<String, String> errorMap = new HashMap<String, String>();

		// 验证密码
		String ckName = "\\w{3,}";
		if (!user.getUser_mm().matches(ckName)) {
			errorMap.put("n", "密码必须3位以上");
		}
		// 验证用户名已存在
		if (uu != null) {
			errorMap.put("user_zh", "此用户名以存在");
		}
		// 验证用户名必须3位以上
		if (!user.getUser_zh().matches(ckName)) {
			errorMap.put("user_zh", "用户名必须3位以上");
		}
		// 验证姓名不可为空
		String user_name = "[\\u4e00-\\u9fa5]{1,6}";
		if (!user.getUser_name().matches(user_name)) {
			errorMap.put("user_name", "只能为汉字(1-6位)");
		}
		// 验证性别不可为空
		if (user.getUser_sex() == null) {
			errorMap.put("user_sex", "性别必填");
		}
		// 验证身份证号
		String user_card = "^(\\d{6})(\\d{4})(\\d{2})(\\d{2})(\\d{3})([0-9]|X)$";
		if (!user.getUser_card().matches(user_card)) {
			errorMap.put("user_card", "身份证号格式不匹配");
		}
		// 验证年龄
		String user_age = "^([0-9]|[0-9]{2}|100)$";
		if (user.getUser_age() == null || user.getUser_age() == "") {
			errorMap.put("user_age", "年龄不可为空");
		}
		if (!user.getUser_age().matches(user_age)) {
			errorMap.put("user_age", "年龄在0至100之间");
		}
		// 验证电话格式
		String user_phone = "^1[3,4,5,7,8]\\d{9}$";
		if (!user.getUser_phone().matches(user_phone)) {
			errorMap.put("user_phone", "电话格式不匹配");
		}
		// 验证地址
		if (user.getUser_address() == null || user.getUser_address() == "") {
			errorMap.put("user_address", "地址不可为空");
		}
		System.out.println("错误信息" + errorMap.size());

		if (errorMap.size() > 0) {
			return errorMap;
		} else {
			String mm = user.getUser_mm();
			String result = md5keyBean.getJmResult(mm);
			user.setUser_mm(result);
			userService.addUser(user);
			errorMap.put("a", "1");
			return errorMap;
		}

	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("register") public boolean register(User user) {
	 * 
	 * User uu=userService.getuserRegister(user); if(uu==null) {
	 * userService.addUser(user); return true; }else { return false; } }
	 */
	// 去登录页面
	@RequestMapping("toLogin")
	public String toLogin() {
		return "login/login";
	}

	// 执行登录
	@ResponseBody
	@RequestMapping("login")
	public int login(User user, HttpServletRequest request) {
		MD5keyBean md5keyBean = new MD5keyBean();
		String result = md5keyBean.getJmResult(user.getUser_mm());
		user.setUser_mm(result);
		User uu = userService.login(user);
		if (uu != null && uu.getUser_zhuangtai().equals("活动")) {
			request.getSession().setAttribute("user_id", uu.getUser_id());
			request.getSession().setAttribute("uu", uu);
			return 1;
		} else {
			return 0;
		}

	}

	// 注销
	@RequestMapping("logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "login/login";
	}

	// 去商品页面
	@RequestMapping("list")
	public String tolist(HttpServletRequest request) {
		List<Shop> shopList = userService.getShopList();
		request.setAttribute("shopList", shopList);

		return "shop/list";
	}

	// 添加订单到购物车
	@ResponseBody
	@RequestMapping("order")
	public int order(Shop shop, Integer count, HttpServletRequest request) {
		Object user_id = request.getSession().getAttribute("user_id");
		Shop ss = userService.getShopObj(shop);
		Integer bid = userService.getBill_id();
		// 门票添加到购物车
		Integer bill_id = bid + 1;
		if (count > Integer.parseInt(ss.getShop_sheng())) {
			return 0;
		} else {
			userService.addOrder(ss, count, user_id, bill_id);
			// 修改门票剩余的票数
			userService.updatecount(ss, count);
			return 1;
		}
	}

	// 购物车页面展示
	@RequestMapping("lookorder")
	public String lookorder(Integer count, HttpServletRequest request) {
		Object user_id = request.getSession().getAttribute("user_id");
		List<Orderr> orderList = userService.getOrderList(user_id);
		Integer zzs = userService.getOrderobj(user_id);
		Integer zsum = userService.getOrderobjsum(user_id);
		request.setAttribute("orderList", orderList);
		request.setAttribute("zzs", zzs);
		request.setAttribute("zsum", zsum);
		return "order/order";
	}

	// 结完账展示订单内容
	@RequestMapping("ajaxbill")
	public String ajaxbill(HttpServletRequest request) {

		Object user_id = request.getSession().getAttribute("user_id");
		Integer zsum = userService.getOrderobjsum(user_id);
		Integer zzs = userService.getOrderobj(user_id);
		List<Orderr> orderList = userService.getOrderList(user_id);
		Bill bb = userService.getBill(user_id);
		request.setAttribute("orderList", orderList);
		request.setAttribute("zsum", zsum);
		request.setAttribute("zzs", zzs);
		request.setAttribute("bb", bb);

		return "paybill/bill";
	}

	// 我的订单查看订单详情
	@RequestMapping("xqing")
	public String xqing(HttpServletRequest request, Bill bill) {
		Object user_id = request.getSession().getAttribute("user_id");
		List<Orderr> orderList = userService.getOrderListByBill(user_id, bill);
		request.setAttribute("orderList", orderList);

		return "xq/xq";
	}

	// 执行结账功能
	@ResponseBody
	@RequestMapping("bill")
	public int bill(HttpServletRequest request) {
		Random random = new Random();
		int bill_name = random.nextInt(100000000);
		Object user_id = request.getSession().getAttribute("user_id");
		// 总价格
		Integer zsum = userService.getOrderobjsum(user_id);
		// 查看用户的余额
		User uu = userService.getUserObj(user_id);
		// 查看订单的总钱数
		Bill bb = userService.getBillsumByUserid();
		// 修改用户余额
		if (Integer.parseInt(bb.getBill_sum()) > Integer.parseInt(uu.getUser_yu())) {
			return 0;
		} else {
			// 结账
			userService.addBill(user_id, bill_name, zsum);
			userService.updateUserMoney(bb, uu);
			return 1;
		}
	}

	// 我的订单页面
	@RequestMapping("mybill")
	public String mybill(HttpServletRequest request) {
		Object user_id = request.getSession().getAttribute("user_id");
		List<Bill> billList = userService.getBillList(user_id);
		// 修改状态购物车信息
		userService.updateOrderStatus(user_id);
		request.setAttribute("billList", billList);
		return "paybill/tobill";
	}

	// 删除用户购物车
	@RequestMapping("del")
	public String del(Orderr o) {
		// 获取商品的信息
		Shop ss = userService.getShopByOrder(o);
		// 删除后添加门票张数
		userService.addcount(ss, o);
		// 用户自行删除购买记录
		userService.del(o);
		return "redirect:lookorder";
	}

	// ----------------------------------------------------------------
	// 去往vip用户页面
	@RequestMapping("toVip")
	public String toVip(Integer id, HttpServletRequest request) {
		User u = userService.getUser(id);
		request.setAttribute("u", u);
		return "vip/vip";
	}

	// 实现修改
	@ResponseBody
	@RequestMapping("doUpdate")
	public int doUpdate(User u, String pwd, String pwdd, HttpServletRequest requests) {
		System.out.println(u);
		if (pwd.equals(pwdd)) {
			userService.doUpdate(u, pwd);
			return 1;
		} else {
			return 0;
		}
	}

	// 去充值页面
	@RequestMapping("toPay")
	public String toPay(Integer id, HttpServletRequest request) {
		User u = userService.getUser(id);
		request.setAttribute("u", u);
		return "pay/pay";
	}

	// 执行充值
	@ResponseBody
	@RequestMapping("doPay")
	public int doPay(Integer je, User u) {
		int i = userService.doPay(u, je);
		return i;
	}
	
	//测试easyui
	
	@RequestMapping("toEasy")
	public String toList(Model model) {
		return "easyui/easy";
	}
	
	@ResponseBody
	@RequestMapping("easy")
	public List<Shop> easy(HttpServletRequest request) {
		
		List<Shop> shopList=userService.getShopList();
		return shopList;
	}

}
