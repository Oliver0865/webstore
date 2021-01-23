package webstore.service;

import java.util.List;
import java.util.Map;

import webstore.domain.Product;

public interface ProductService {
	void updateAllStock();
	List<Product> getAllProducts();
	List<Product> getProductsByCategory(String category);
	List<Product> getProductsByFilter(Map<String, List<String>> filterParams);
	void addProduct(Product product);
	Product getProductById(String productID);

}
