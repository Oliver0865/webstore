package webstore.service;

import webstore.domain.Cart;
import webstore.dto.CartDto;

public interface CartService {
	void create(CartDto cartDto);
	Cart read(String cartId);
	void update(String cartId, CartDto cartDto);
	void addItem(String cartId, String productId);
	void removeItem(String cartId, String productId);
	void delete(String id);
	Cart validate(String cartId);
	void clearCart(String cartId);

}
