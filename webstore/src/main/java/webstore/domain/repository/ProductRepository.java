package webstore.domain.repository;

import java.util.List;
import java.util.Map;

import webstore.domain.Product;

public interface ProductRepository {
	List<Product> getAllProducts();
	List<Product> getProductsByCategory(String category);
	List<Product> getProductsByFilter(Map<String, List<String>> filterParams);
	Product getProductById(String pruductID);
	void addProduct(Product product);
	void updateStock(String productId, long noOfUnits);

}
