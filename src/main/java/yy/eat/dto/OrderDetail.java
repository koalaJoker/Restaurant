/*
 * Copyright (C) HAND Enterprise Solutions Company Ltd.
 * All Rights Reserved
 */
package yy.eat.dto;



public class OrderDetail {
	private Long orderDetailid;

	private Long orderId;

	private Long foodId;

	private Long count;

	public Long getOrderDetailid() {
		return orderDetailid;
	}

	public void setOrderDetailid(Long orderDetailid) {
		this.orderDetailid = orderDetailid;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Long getFoodId() {
		return foodId;
	}

	public void setFoodId(Long foodId) {
		this.foodId = foodId;
	}

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
	}
}

