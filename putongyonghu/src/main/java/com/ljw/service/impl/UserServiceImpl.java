package com.ljw.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ljw.dto.Bill;
import com.ljw.dto.Orderr;
import com.ljw.dto.Shop;
import com.ljw.dto.User;
import com.ljw.mapper.UserMapper;
import com.ljw.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
	}

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userMapper.login(user);
	}

	@Override
	public List<Shop> getShopList() {
		// TODO Auto-generated method stub
		return userMapper.getShopList();
	}

	@Override
	public Shop getShopObj(Shop shop) {
		// TODO Auto-generated method stub
		return userMapper.getShopObj(shop);
	}

	@Override
	public void addOrder(Shop ss, Integer count,Object user_id,Integer bill_id) {
		// TODO Auto-generated method stub
		Integer order_sum=count*Integer.parseInt(ss.getShop_price());
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		map.put("shop_id",ss.getShop_id());
		map.put("order_sum",order_sum);
		map.put("order_zs",count);
		map.put("bill_id",bill_id);
		userMapper.addOrder(map);
		
	}

	@Override
	public List<Orderr> getOrderList(Object user_id) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		return userMapper.getOrderList(map);
	}

	@Override
	public Integer getOrderobj(Object user_id) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		return userMapper.getOrderobj(map);
	}

	@Override
	public Integer getOrderobjsum(Object user_id) {
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		return userMapper.getOrderobjsum(map);
	}

	@Override
	public User getUser(Integer id) {
		// TODO Auto-generated method stub
		return userMapper.getUser(id);
	}

	@Override
	public void addBill(Object user_id, int bill_name,Integer zsum) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		map.put("bill_name",bill_name);
		map.put("bill_sum",zsum);
		
		 userMapper.addBill(map);
		
	}



	@Override
	public Orderr getOrderr(Object user_id) {
		HashMap<Object,Object> map = new HashMap<>();
		
		map.put("user_id",user_id);
		
		return userMapper.getOrderr(map);
	}

	@Override
	public List<Bill> getBillList(Object user_id) {
		
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		return userMapper.getBillList(map);
	}

	@Override
	public void del(Orderr o) {
		// TODO Auto-generated method stub
		userMapper.del(o);
	}

	@Override
	public User getUserObj(Object user_id) {
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		return userMapper.getUserObj(map);
	}

	@Override
	public void delbillorder(Bill bb) {
		/*HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);*/
		userMapper.delbillorder(bb);
	}

	@Override
	public void addZhong(Integer order_id, Integer bill_id) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		map.put("order_id",order_id);
		map.put("bill_id",bill_id);
		userMapper.addZhong(map);
	}



	@Override
	public void doUpdate(User u,String pwd) {
		// TODO Auto-generated method stub
		Map<Object,Object> map = new HashMap<>();
		map.put("user_address", u.getUser_address());
		map.put("user_phone", u.getUser_phone());
		map.put("user_id", u.getUser_id());
		map.put("pwd", pwd);
		userMapper.doUpdate(map);
	}

	@Override
	public int doPay(User u, Integer je) {
		// TODO Auto-generated method stub
		int yu =Integer.valueOf(u.getUser_yu());
		int zong = yu + je;
		System.out.println(zong);
		Map<Object,Object> map = new HashMap<>();
		map.put("zong", zong);
		map.put("id", u.getUser_id());
		return userMapper.doPay(map);
	}

	@Override
	public void updatecount(Shop ss, Integer count) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		Integer newcount=Integer.parseInt(ss.getShop_sheng())-count;
		map.put("shop_id",ss.getShop_id());
		map.put("shop_sheng",newcount);
		userMapper.updatecount(map);
		
	}

	@Override
	public void addcount(Shop ss,Orderr o) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		Integer newcount=Integer.parseInt(ss.getShop_sheng())+ss.getOrder_zs();
		map.put("shop_id",ss.getShop_id());
		map.put("shop_sheng",newcount);
		userMapper.addcount(map);
	}

	@Override
	public Shop getShopByOrder(Orderr o) {
		// TODO Auto-generated method stub
		return userMapper.getShopByOrder(o);
	}

	@Override
	public User getuserRegister(User user) {
		// TODO Auto-generated method stub
		return userMapper.getuserRegister(user);
	}

	@Override
	public List<Orderr> getOrderListByBill(Integer bill_id) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		map.put("bill_id",bill_id);
		return userMapper.getOrderListByBill(map);
	}

	@Override
	public void updateOrderStatus(Object user_id) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		userMapper.updateOrderStatus(map);
	}

	@Override
	public Bill getBill(Object user_id) {
		// TODO Auto-generated method stub
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		return userMapper.getBill(map);
	}

	@Override
	public Integer getBill_id() {
		return userMapper.getBill_id();
	}

	@Override
	public List<Orderr> getOrderListByBill(Object user_id, Bill bb) {
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",user_id);
		map.put("bill_id",bb.getBill_id());
		return userMapper.getOrderListByBill(map);
	}

	@Override
	public Bill getBillsumByUserid() {
		
		return userMapper.getBillsumByUserid();
	}

	@Override
	public void updateUserMoney(Bill bb, User uu) {
		Integer newqian=Integer.parseInt(uu.getUser_yu())-Integer.parseInt(bb.getBill_sum());
		HashMap<Object,Object> map = new HashMap<>();
		map.put("user_id",uu.getUser_id());
		map.put("user_yu",newqian);
		userMapper.updateUserMoney(map);
		
	}




	
}
