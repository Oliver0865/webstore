<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="utf-8">
<link rel="stylesheet"
   href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Kunde</title>
</head>
<body>
   <section>
      <div class="jumbotron">
         <div class="container">
            <h1>Versand</h1>
            <p>Versanddetails</p>
         </div>
      </div>
   </section>
   <section class="container">
      <form:form modelAttribute="order.shippingDetail" class="form-horizontal">
         <fieldset>
            <legend>Versanddetails</legend>
            
            <div class="form-group">
               <label class="control-label col-lg-2 col-lg-2" for="name" />Name</label>
               <div class="col-lg-10">
                  <form:input id="name" path="name" type="text" class="form:input-large" />
               </div>
            </div>

            <div class="form-group">
               <label class="control-label col-lg-2 col-lg-2" for="shippingDate" />Versanddatum (TT.MM.YYYY)</label>
               <div class="col-lg-10">
                  <form:input id="shippingDate" path="shippingDate" type="text" class="form:input-large" />
               </div>
            </div>

            <div class="form-group">
               <label class="control-label col-lg-2" for="doorNo">T&uuml;r Nr</label>
               <div class="col-lg-10">
                  <form:input id="doorNo" path="shippingAddress.doorNo" type="text"
                     class="form:input-large" />
               </div>
            </div>

            <div class="form-group">
               <label class="control-label col-lg-2" for="streetName">Stra&szlig;e</label>
               <div class="col-lg-10">
                  <form:input id="streetName" path="shippingAddress.streetName." type="text"
                     class="form:input-large" />
               </div>
            </div>

            <div class="form-group">
               <label class="control-label col-lg-2" for="areaName">Gebiet</label>
               <div class="col-lg-10">
                  <form:input id="areaName" path="shippingAddress.areaName" type="text"
                     class="form:input-large" />
               </div>
            </div>

            <div class="form-group">
               <label class="control-label col-lg-2" for="state">Bundesland</label>
               <div class="col-lg-10">
                  <form:input id="state" path="shippingAddress.state" type="text"
                     class="form:input-large" />
               </div>
            </div>

            <div class="form-group">
               <label class="control-label col-lg-2" for="country">Land</label>
               <div class="col-lg-10">
                  <form:input id="country" path="shippingAddress.country" type="text"
                     class="form:input-large" />
               </div>
            </div>

            <div class="form-group">
               <label class="control-label col-lg-2" for="zipCode">PLZ Code</label>
               <div class="col-lg-10">
                  <form:input id="zipCode" path="shippingAddress.zipCode" type="text"
                     class="form:input-large" />
               </div>
            </div>

            <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>

            <div class="form-group">
               <div class="col-lg-offset-2 col-lg-10">
                  <button id="back" class="btn btn-default" name="_eventId_backToCollectCustomerInfo">zur&uuml;ck</button>
                  
                  <input type="submit" id="btnAdd" class="btn btn-primary"
                     value="Hinzuf&uuml;gen"  name="_eventId_shippingDetailCollected"/>
                  <button id="btnCancel" class="btn btn-default" name="_eventId_cancel">Abbrechen</button>
               </div>
            </div>

         </fieldset>
      </form:form>
   </section>
</body>
</html>
