package webstore.domain.repository;

import webstore.domain.Customer;

public interface CustomerRepository {
	Customer getCustomer(String name);
	Boolean isCustomerExist(String customerId);

}
