package cn.yijiekitchen.shop.cart.vo;

import cn.yijiekitchen.shop.product.vo.Product;


public class CartItem {
	private Product product;	// 购物项中商品信息
	private int count;			// 购买某种商品数量
	private double subtotal;	// 购买某种商品小计
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public double getSubtotal() {
		return count * product.getShop_price();
	}
	
	
}
