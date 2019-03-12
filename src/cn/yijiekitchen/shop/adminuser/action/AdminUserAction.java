package cn.yijiekitchen.shop.adminuser.action;

import org.apache.struts2.ServletActionContext;

import cn.yijiekitchen.shop.adminuser.service.AdminUserService;
import cn.yijiekitchen.shop.adminuser.vo.AdminUser;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AdminUserAction extends ActionSupport implements
		ModelDriven<AdminUser> {
	
	private AdminUser adminUser = new AdminUser();

	public AdminUser getModel() {
		return adminUser;
	}


	private AdminUserService adminUserService;

	public void setAdminUserService(AdminUserService adminUserService) {
		this.adminUserService = adminUserService;
	}

	// 后台登录的执行的方法
	public String login() {
		
		AdminUser existAdminUser = adminUserService.login(adminUser);
		if (existAdminUser == null) {
			this.addActionError("用户名或密码错误!");
			return "loginFail";
		} else {
			ServletActionContext.getRequest().getSession()
					.setAttribute("existAdminUser", existAdminUser);
			return "loginSuccess";
		}
	}
}
