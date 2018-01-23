package com.ljw.service;

import java.util.List;

import com.ljw.dto.Bill;
import com.ljw.dto.Orderr;
import com.ljw.dto.Shop;
import com.ljw.dto.User;

public interface UserService {

	void addUser(User user);

	User login(User user);

	List<Shop> getShopList();

	Shop getShopObj(Shop shop);

	void addOrder(Shop ss, Integer count, Object user_id, Integer bill_id);

	List<Orderr> getOrderList(Object user_id);

	Integer getOrderobj(Object user_id);

	Integer getOrderobjsum(Object user_id);

	User getUser(Integer id);

	void addBill(Object user_id,int bill_name, Integer zsum);

	Orderr getOrderr(Object user_id);

	List<Bill> getBillList(Object user_id);

	void del(Orderr o);

	User getUserObj(Object user_id);

	void delbillorder(Bill bb);

	void addZhong(Integer order_id, Integer bill_id);

	void doUpdate(User u, String pwd);

	int doPay(User u, Integer je);

	void updatecount(Shop ss, Integer count);

	void addcount(Shop ss, Orderr o);

	Shop getShopByOrder(Orderr o);

	User getuserRegister(User user);

	Bill getBill(Object user_id);

	List<Orderr> getOrderListByBill(Integer bill_id);

	void updateOrderStatus(Object user_id);

	Integer getBill_id();

	List<Orderr> getOrderListByBill(Object user_id, Bill bb);

	Bill getBillsumByUserid();

	void updateUserMoney(Bill bb, User uu);




}
