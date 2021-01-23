package webstore.domain;

import java.io.Serializable;

public class Order implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5740958258271945187L;
	private Long orderId;
	private Cart cart;
	private Customer customer;
	private ShippingDetail shippingDetail;
	public Order() {
		this.setCustomer(new Customer());
		this.setShippingDetail(new ShippingDetail());
	}
	public Long getOrderId() {
		return orderId;
	}
	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public ShippingDetail getShippingDetail() {
		return shippingDetail;
	}
	public void setShippingDetail(ShippingDetail shippingDetail) {
		this.shippingDetail = shippingDetail;
	}
	
	@Override
	public boolean equals(Object obj) {
		if(this==obj)
			return true;
		if(obj==null)
			return false;
		if(getClass()!=obj.getClass())
			return false;
		Order other=(Order)obj;
		if(orderId==null) {
			if(other.orderId!=null)
				return false;
		}else if (!orderId.equals(other.orderId))
			return false;
		return true;
	}

}
