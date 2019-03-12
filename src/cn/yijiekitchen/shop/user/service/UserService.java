package cn.yijiekitchen.shop.user.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import cn.yijiekitchen.shop.order.vo.Order;
import cn.yijiekitchen.shop.user.dao.UserDao;
import cn.yijiekitchen.shop.user.vo.User;
import cn.yijiekitchen.shop.utils.MailUitls;
import cn.yijiekitchen.shop.utils.PageBean;
import cn.yijiekitchen.shop.utils.UUIDUtils;


@Transactional
public class UserService {
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	public User findByUsername(String username){
		return userDao.findByUsername(username);
	}

	//根据激活码保存用户
	public void save(User user) {
		user.setState(0); 
		String code = UUIDUtils.getUUID()+UUIDUtils.getUUID();
		user.setCode(code);
		userDao.save(user);
		MailUitls.sendMail(user.getEmail(), code);
	}

	// 业务层根据激活码查询用户
	public User findByCode(String code) {
		return userDao.findByCode(code);
	}

	// 修改用户的状态的方法
	public void update(User existUser) {
		userDao.update(existUser);
	}

	// 用户登录的方法
	public User login(User user) {
		return userDao.login(user);
	}

	// 业务层用户查询所有
	public PageBean<User> findByPage(Integer page) {
		PageBean<User> pageBean = new PageBean<User>();
		pageBean.setPage(page);
		int limit = 5;
		pageBean.setLimit(limit);
		int totalCount = 0;
		totalCount = userDao.findCount();
		pageBean.setTotalCount(totalCount);
		int totalPage = 0;
		if(totalCount % limit == 0){
			totalPage = totalCount / limit;
		}else{
			totalPage = totalCount / limit + 1;
		}
		pageBean.setTotalPage(totalPage);
		int begin = (page - 1)*limit;
		List<User> list = userDao.findByPage(begin,limit);
		pageBean.setList(list);
		return pageBean;
	}


	public User findByUid(Integer uid) {
		return userDao.findByUid(uid);
	}


	public void delete(User existUser) {
		userDao.delete(existUser);
	}
}
