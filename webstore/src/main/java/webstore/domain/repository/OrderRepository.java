package webstore.domain.repository;

import webstore.domain.Order;

public interface OrderRepository {
	long saveOrder(Order order);
}
