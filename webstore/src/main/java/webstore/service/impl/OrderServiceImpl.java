package webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webstore.domain.Order;
import webstore.domain.repository.OrderRepository;
import webstore.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderRepository orderRepository;

	@Override
	public long saveOrder(Order order) {
		return orderRepository.saveOrder(order);
	}

}
