package cn.yijiekitchen.shop.adminuser.service;

import org.springframework.transaction.annotation.Transactional;

import cn.yijiekitchen.shop.adminuser.dao.AdminUserDao;
import cn.yijiekitchen.shop.adminuser.vo.AdminUser;
@Transactional
public class AdminUserService {
	private AdminUserDao adminUserDao;
	public void setAdminUserDao(AdminUserDao adminUserDao) {
		this.adminUserDao = adminUserDao;
	}

	
	public AdminUser login(AdminUser adminUser) {
		return adminUserDao.login(adminUser);
	}
	
}
