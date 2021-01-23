package webstore.service;

import webstore.domain.Order;

public interface OrderService {
	long saveOrder(Order order);
}
