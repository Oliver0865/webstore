package webstore.service;

import webstore.domain.Customer;

public interface CustomerService {
	Customer getCustomer(String customerId);
	Boolean isCustomerExist(String customerId);
}
