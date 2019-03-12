package cn.yijiekitchen.shop.order.action;

import java.io.IOException;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import cn.yijiekitchen.shop.cart.vo.Cart;
import cn.yijiekitchen.shop.cart.vo.CartItem;
import cn.yijiekitchen.shop.order.service.OrderService;
import cn.yijiekitchen.shop.order.vo.Order;
import cn.yijiekitchen.shop.order.vo.OrderItem;
import cn.yijiekitchen.shop.user.vo.User;
import cn.yijiekitchen.shop.utils.PageBean;
import cn.yijiekitchen.shop.utils.PaymentUtil;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class OrderAction extends ActionSupport implements ModelDriven<Order> {
	private Order order = new Order();

	public Order getModel() {
		return order;
	}

	private String pd_FrpId;

	public void setPd_FrpId(String pd_FrpId) {
		this.pd_FrpId = pd_FrpId;
	}
	
	private String r3_Amt;
	private String r6_Order;
	
	public void setR3_Amt(String r3_Amt) {
		this.r3_Amt = r3_Amt;
	}

	public void setR6_Order(String r6_Order) {
		this.r6_Order = r6_Order;
	}

	
	private Integer page;

	public void setPage(Integer page) {
		this.page = page;
	}

	
	private OrderService orderService;

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}


	public String saveOrder() {

		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");
		if (cart == null) {
			this.addActionMessage("亲!您还没有购物!");
			return "msg";
		}
		order.setTotal(cart.getTotal());
		order.setState(1);
		order.setOrdertime(new Date());
		User existUser = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("existUser");
		if (existUser == null) {
			this.addActionMessage("亲!您还没有登录!");
			return "msg";
		}
		order.setUser(existUser);
		for (CartItem cartItem : cart.getCartItems()) {
			OrderItem orderItem = new OrderItem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setProduct(cartItem.getProduct());
			orderItem.setOrder(order);

			order.getOrderItems().add(orderItem);
		}
		orderService.save(order);
		cart.clearCart();
		return "saveOrder";
	}

	public String findByUid() {
	
		User existUser = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("existUser");
		Integer uid = existUser.getUid();
		PageBean<Order> pageBean = orderService.findByUid(uid, page);
		ActionContext.getContext().getValueStack().set("pageBean", pageBean);
		return "findByUid";
	}


	public String findByOid() {
		order = orderService.findByOid(order.getOid());
		return "findByOid";
	}

	
	public String payOrder() throws IOException {
		Order currOrder = orderService.findByOid(order.getOid());
		currOrder.setAddr(order.getAddr());
		currOrder.setName(order.getName());
		currOrder.setPhone(order.getPhone());
		orderService.update(currOrder);
		String p0_Cmd = "Buy"; // 业务类型:
		String p1_MerId = "10001126856";// 商户编号:
		String p2_Order = order.getOid().toString();// 订单编号:
		String p3_Amt = "0.01"; // 付款金额:
		String p4_Cur = "CNY"; // 交易币种:
		String p5_Pid = ""; // 商品名称:
		String p6_Pcat = ""; // 商品种类:
		String p7_Pdesc = ""; // 商品描述:
		String p8_Url = "http://192.168.36.69:8080/shop/order_callBack.action"; // 商户接收支付成功数据的地址:
		String p9_SAF = ""; // 送货地址:
		String pa_MP = ""; // 商户扩展信息:
		String pd_FrpId = this.pd_FrpId;// 支付通道编码:
		String pr_NeedResponse = "1"; // 应答机制:
		String keyValue = "69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl"; // 秘钥
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt,
				p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
				pd_FrpId, pr_NeedResponse, keyValue); // hmac
		// 向易宝发送请求:
		StringBuffer sb = new StringBuffer("https://www.yeepay.com/app-merchant-proxy/node?");
		sb.append("p0_Cmd=").append(p0_Cmd).append("&");
		sb.append("p1_MerId=").append(p1_MerId).append("&");
		sb.append("p2_Order=").append(p2_Order).append("&");
		sb.append("p3_Amt=").append(p3_Amt).append("&");
		sb.append("p4_Cur=").append(p4_Cur).append("&");
		sb.append("p5_Pid=").append(p5_Pid).append("&");
		sb.append("p6_Pcat=").append(p6_Pcat).append("&");
		sb.append("p7_Pdesc=").append(p7_Pdesc).append("&");
		sb.append("p8_Url=").append(p8_Url).append("&");
		sb.append("p9_SAF=").append(p9_SAF).append("&");
		sb.append("pa_MP=").append(pa_MP).append("&");
		sb.append("pd_FrpId=").append(pd_FrpId).append("&");
		sb.append("pr_NeedResponse=").append(pr_NeedResponse).append("&");
		sb.append("hmac=").append(hmac);
		ServletActionContext.getResponse().sendRedirect(sb.toString());
		return NONE;
	}

	// 付款成功后跳转回来的路径:
	public String callBack(){

		Order currOrder = orderService.findByOid(Integer.parseInt(r6_Order));
		currOrder.setState(2);
		orderService.update(currOrder);
		this.addActionMessage("支付成功!订单编号为: "+r6_Order +" 付款金额为: "+r3_Amt);
		return "msg";
	}
	
	// 修改订单的状态:
	public String updateState(){
		Order currOrder = orderService.findByOid(order.getOid());
		currOrder.setState(4);
		orderService.update(currOrder);
		return "updateStateSuccess";
	}
}
