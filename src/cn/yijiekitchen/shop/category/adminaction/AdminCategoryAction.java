package cn.yijiekitchen.shop.category.adminaction;

import java.util.List;

import cn.yijiekitchen.shop.category.service.CategoryService;
import cn.yijiekitchen.shop.category.vo.Category;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class AdminCategoryAction extends ActionSupport implements ModelDriven<Category>{
	// 模型驱动使用的对象.
	private Category category = new Category();
	public Category getModel() {
		return category;
	}
	// 注入一级分类的Service
	public CategoryService categoryService;
	
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}



	// 查询所有一级分类
	public String findAll(){
		List<Category> cList = categoryService.findAll();
		ActionContext.getContext().getValueStack().set("cList", cList);
		return "findAll";
	}
	
	// 保存一级分类的方法
	public String save(){
		categoryService.save(category);
		return "saveSuccess";
	}
	
	// 删除一级分类的方法:
	public String delete(){
		category = categoryService.findByCid(category.getCid());
		categoryService.delete(category);
		return "deleteSuccess";
	}
	
	// 编辑一级分类的方法:
	public String edit(){
		category = categoryService.findByCid(category.getCid());
		return "editSuccess";
	}
	
	// 修改一级分类的方法:
	public String update(){
		categoryService.update(category);
		return "updateSuccess";
	}
}
