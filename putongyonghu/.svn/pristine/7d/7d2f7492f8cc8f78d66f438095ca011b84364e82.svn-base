package com.ljw.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ljw.dto.Bill;
import com.ljw.dto.Orderr;
import com.ljw.dto.Shop;
import com.ljw.dto.User;

@Mapper
public interface UserMapper {

	void addUser(User user);

	User login(User user);

	List<Shop> getShopList();

	Shop getShopObj(Shop shop);

	void addOrder(HashMap<Object, Object> map);

	List<Orderr> getOrderList(HashMap<Object, Object> map);

	Integer getOrderobj(HashMap<Object, Object> map);

	Integer getOrderobjsum(HashMap<Object, Object> map);
	
	
	User getUser(Integer id);

	void addBill(HashMap<Object, Object> map);

	Bill getBill(HashMap<Object, Object> map);

	Orderr getOrderr(HashMap<Object, Object> map);

	List<Bill> getBillList(HashMap<Object, Object> map);

	void del(Orderr o);

	User getUserObj(HashMap<Object, Object> map);

	Object delbillorder(HashMap<Object, Object> map);

	void delbillorder(Bill bb);

	void addZhong(HashMap<Object, Object> map);

	void doUpdate(Map<Object, Object> map);

	int doPay(Map<Object, Object> map);

	void updatecount(HashMap<Object, Object> map);

	void addcount(HashMap<Object, Object> map);

	Shop getShopByOrder(Orderr o);

	User getuserRegister(User user);

	List<Orderr> getOrderListByBill(HashMap<Object, Object> map);

	void updateOrderStatus(HashMap<Object, Object> map);

	Integer getBill_id();

	Bill getBillsumByUserid();

	void updateUserMoney(HashMap<Object, Object> map);

}
