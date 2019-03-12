package cn.yijiekitchen.shop.index.action;

import java.util.List;

import cn.yijiekitchen.shop.category.service.CategoryService;
import cn.yijiekitchen.shop.category.vo.Category;
import cn.yijiekitchen.shop.product.service.ProductService;
import cn.yijiekitchen.shop.product.vo.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class IndexAction extends ActionSupport{
	
	private CategoryService categoryService;
	private ProductService productService;
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	/**
	 * 执行的访问首页的方法:
	 */
	public String execute(){
		
		List<Category> cList = categoryService.findAll();
		ActionContext.getContext().getSession().put("cList", cList);
		List<Product> hList = productService.findHot();
		ActionContext.getContext().getValueStack().set("hList", hList);
		List<Product> nList = productService.findNew();
		ActionContext.getContext().getValueStack().set("nList", nList);
		return "index";
	}
	
	
}
