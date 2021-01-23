package webstore.domain.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import webstore.domain.Customer;
import webstore.domain.repository.CustomerRepository;
import webstore.interceptor.ProcessingTimeLogInterceptor;
import webstore.service.CustomerService;

@Repository
public class InMemoryCustomerRepository implements CustomerRepository {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private NamedParameterJdbcTemplate jdbcTempleate;

	private static final Logger LOGGER = Logger.getLogger(ProcessingTimeLogInterceptor.class);

	private static final class CustomerMapper implements RowMapper<Customer> {
		public CustomerMapper(NamedParameterJdbcTemplate jdbcTempleate, CustomerService customerService) {
		}

		public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
			Customer customer = new Customer();
			customer.setCustomerId(rs.getLong("ID"));
			customer.setName(rs.getString("NAME"));
			customer.setPhoneNumber(rs.getString("PHONE_NUMBER"));
			customer.setBillingAddressId(rs.getLong("BILLING_ADDRESS_ID"));
			return customer;
		}
	}

	@Override
	public Customer getCustomer(String Id) {
		String SQL = "SELECT * FROM CUSTOMER WHERE ID= :ID";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("ID", Id);
		CustomerMapper customerMapper = new CustomerMapper(jdbcTempleate, customerService);
		try {
			return jdbcTempleate.queryForObject(SQL, params, customerMapper);
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}

	@Override
	public Boolean isCustomerExist(String id) {
		String SQL = "SELECT * FROM CUSTOMER WHERE ID= :customerId";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("customerId", id);
		CustomerMapper customerMapper = new CustomerMapper(jdbcTempleate, customerService);
		try {
			jdbcTempleate.queryForObject(SQL, params, customerMapper);
			LOGGER.info(String.format("Gefunden ! %s", id));
			return true;
		} catch (EmptyResultDataAccessException e) {
			LOGGER.info(String.format("NIX GEFUNDEN! %s ", id));
			return false;
		}
	}
}
