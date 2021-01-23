<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
   <section class="container" data-ng-app="cartApp">
      <div data-ng-controller="cartCtrl" data-ng-init="initCartId('${cartId}')">

         <div>
            <a class="btn btn-danger pull-left"
               data-ng-click="clearCart()"> <span
               class="glyphicon glyphicon-remove-sign"></span> leeren
            </a> <a href="<spring:url value="/checkout?cartId=${cartId}"/>" class="btn btn-success pull-right"> <span
               class="glyphicon-shopping-cart glyphicon"></span> Check out
            </a>
         </div>
         <table class="table table-hover">
            <tr>
               <th>Produkt</th>
               <th>Einzelpreis</th>
               <th>Menge</th>
               <th>Preis</th>
               <th>Aktion</th>
            </tr>
            <tr data-ng-repeat="item in cart.cartItems">
               <td>{{item.product.productId}}-{{item.product.name}}</td>
               <td>{{item.product.unitPrice}}</td>
               <td>{{item.quantity}}</td>
               <td>{{item.totalPrice}}</td>
               <td><a href="#" class="label label-danger" data-ng-click="removeFromCart(item.product.productId)"> <span
                     class="glyphicon glyphicon-remove" /></span> Entfernen
               </a></td>
            </tr>
            <tr>
               <th></th>
               <th></th>
               <th>Gesamtsumme</th>
               <th>{{cart.grandTotal}}</th>
               <th></th>
            </tr>
         </table>
         
         <a href="<spring:url value="/market/products" />" class="btn btn-default">
                  <span class="glyphicon-hand-left glyphicon"></span> Weiter Einkaufen
         </a>
      </div>
   </section>
</body>
</html>
