package cn.yijiekitchen.shop.product.action;

import cn.yijiekitchen.shop.category.service.CategoryService;
import cn.yijiekitchen.shop.product.service.ProductService;
import cn.yijiekitchen.shop.product.vo.Product;
import cn.yijiekitchen.shop.utils.PageBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class ProductAction extends ActionSupport implements
		ModelDriven<Product> {
	private Product product = new Product();
	private ProductService productService;
	private Integer cid;
	private Integer csid;

	public Integer getCsid() {
		return csid;
	}

	public void setCsid(Integer csid) {
		this.csid = csid;
	}


	private CategoryService categoryService;
	private int page;
	public void setPage(int page) {
		this.page = page;
	}

	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getCid() {
		return cid;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public Product getModel() {
		return product;
	}

	// 根据商品的ID进行查询商品:执行方法:调用Service的方法完成查询.
	public String findByPid() {
		product = productService.findByPid(product.getPid());
		return "findByPid";
	}


	public String findByCid() {
		PageBean<Product> pageBean = productService.findByPageCid(cid, page);// 根据一级分类查询商品,带分页查询
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCid";
	}

	// 根据二级分类id查询商品:
	public String findByCsid() {
		PageBean<Product> pageBean = productService.findByPageCsid(csid, page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByCsid";
	}
}
