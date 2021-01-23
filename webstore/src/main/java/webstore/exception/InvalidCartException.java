package webstore.exception;

public class InvalidCartException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6259464769946190742L;
	private String cartId;
	public String getCartId() {
		return cartId;
	}
	public InvalidCartException (String cartId) {
		this.cartId=cartId;
	}
}
