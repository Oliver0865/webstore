<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<section class="container" data-ng-app="cartApp">
		<div class="row">
			<div class="col-md-5">
				<img
					src="<c:url value="/resources/images/${product.productId }.png">
					</c:url>"
					alt="image" style="width: 100%" />
				<h3>${product.name }</h3>
				<p>${products.description }</p>
				<p>
					<strong> Item Code: </strong><span class="label label-warning">${product.productId}
					</span>
				</p>
				<p>
					<strong>Hersteller</strong>: ${product.manufacturer }
				</p>
				<p>
					<strong>Kategorie</strong>: ${product.category }
				</p>
				<p>
					<strong> Verf&uuml;gbare Menge</strong> ${product.unitsInStock }
				</p>
				<h4>${product.unitPrice }&euro;</h4>
				<p data-ng-controller="cartCtrl">
					<a href="<spring:url value="/market/products" />"
						class="btn btn-default"> <span
						class="glyphicon-hand-left glyphicon"></span> zur&uuml;ck
					</a> <a href="#" class="btn btn-warning btn-large"
						data-ng-click="addToCart('${product.productId}')"> <span
						class="glyphicon-shoppidata-ng-cart glyphicon"></span>Jetzt bestellen
					</a> <a href="<spring:url value="/cart" />" class="btn btn default">
						<span class="glyphicon-hand-right glyphicon"></span> Einkaufswagen
					</a>

				</p>
			</div>
		</div>
	</section>
</body>
</html>