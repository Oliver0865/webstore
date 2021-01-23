<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="utf-8">
<link rel="stylesheet"
   href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Order Confirmation</title>
</head>

<body>

   <section>
      <div class="jumbotron">
         <div class="container">
            <h1>Bestellung</h1>
            <p>Bestellbest&auml;tigung</p>
         </div>
      </div>
   </section>
   <div class="container">
      <div class="row">
         <form:form modelAttribute="order" class="form-horizontal">
            <input type="hidden" name="_flowExecutionKey"
               value="${flowExecutionKey}" />

            <div
               class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
               <div class="text-center">
                  <h1>Best&auml;tigung</h1>
               </div>
               <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6">
                     <address>
                        <strong>Lieferadresse</strong> <br>
                        ${order.shippingDetail.name}<br>
                        ${order.shippingDetail.shippingAddress.streetName},${order.shippingDetail.shippingAddress.doorNo}
                        <br>
                        ${order.shippingDetail.shippingAddress.areaName},${order.shippingDetail.shippingAddress.state}
                        <br>
                        ${order.shippingDetail.shippingAddress.country},${order.shippingDetail.shippingAddress.zipCode}
                        <br>
                     </address>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                     <p>
                        <em>Lieferdatum: <fmt:formatDate type="date"
                              value="${order.shippingDetail.shippingDate}" /></em>
                     </p>
                  </div>
               </div>
               <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6">
                     <address>
                        <strong>Rechnungsanschrift</strong> <br>
                        ${order.customer.name}
                        <br>
                        ${order.customer.billingAddress.streetName},${order.customer.billingAddress.doorNo}
                        <br>
                        ${order.customer.billingAddress.areaName},${order.customer.billingAddress.state}
                        <br>
                        ${order.customer.billingAddress.country},${order.customer.billingAddress.zipCode}
                        <br> <abbr title="Telefonnummer">Tel.:</abbr>
                        ${order.customer.phoneNumber}
                     </address>
                  </div>

               </div>
               <div class="row">

                  <table class="table table-hover">
                     <thead>
                        <tr>
                           <th>Product</th>
                           <th>Anzahl</th>
                           <th class="text-center">Preis</th>
                           <th class="text-center">Gesamt</th>
                        </tr>
                     </thead>
                     <tbody>
                        <c:forEach var="cartItem" items="${order.cart.cartItems}">
                           <tr>
                              <td class="col-md-9"><em>${cartItem.product.name}</em></td>
                              <td class="col-md-1" style="text-align: center">
                                 ${cartItem.quantity}</td>
                              <td class="col-md-1 text-center">${cartItem.product.unitPrice} &euro;</td>
                              <td class="col-md-1 text-center">${cartItem.totalPrice} &euro;</td>
                           </tr>
                        </c:forEach>

                        <tr>
                           <td> </td>
                           <td> </td>
                           <td class="text-right"><h4>
                                 <strong>Gesamtbetrag: </strong>
                              </h4></td>
                           <td class="text-center text-danger"><h4>
                                 <strong>${order.cart.grandTotal} &euro;</strong>
                              </h4></td>
                        </tr>
                     </tbody>
                  </table>
                  <button id="back" class="btn btn-default"
                     name="_eventId_backToCollectShippingDetail">zur&uuml;ck</button>

                  <button type="submit" class="btn btn-success"
                     name="_eventId_orderConfirmed">
                     Ok   <span class="glyphicon glyphicon-chevron-right"></span>
                  </button>
                  <button id="btnCancel" class="btn btn-default"
                     name="_eventId_cancel">Abbrechen</button>
               </div>
            </div>
         </form:form>
      </div>
   </div>
</body>
</html>
