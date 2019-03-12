package cn.yijiekitchen.shop.cart.action;

import org.apache.struts2.ServletActionContext;

import cn.yijiekitchen.shop.cart.vo.Cart;
import cn.yijiekitchen.shop.cart.vo.CartItem;
import cn.yijiekitchen.shop.product.service.ProductService;
import cn.yijiekitchen.shop.product.vo.Product;

import com.opensymphony.xwork2.ActionSupport;


public class CartAction extends ActionSupport {
	
	private Integer pid;
	private Integer count;
	private ProductService productService;

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String addCart() {
		CartItem cartItem = new CartItem();
		cartItem.setCount(count);
		Product product = productService.findByPid(pid);
		cartItem.setProduct(product);
		Cart cart = getCart();
		cart.addCart(cartItem);
		return "addCart";
	}

	// 清空购物车的执行的方法:
	public String clearCart(){
		Cart cart = getCart();
		cart.clearCart();
		return "clearCart";
	}
	
	// 从购物车中移除购物项的方法:
	public String removeCart(){
		Cart cart = getCart();
		cart.removeCart(pid);
		return "removeCart";
	}
	
	// 我的购物车:执行的方法
	public String myCart(){
		return "myCart";
	}
	
	/**
	 * 从session中获得购物车.
	 */
	private Cart getCart() {
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			ServletActionContext.getRequest().getSession()
					.setAttribute("cart", cart);
		}
		return cart;
	}
}
