<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<section class="container">
	<form:form method="POST" modelAttribute="newProduct"
		class="form-horizontal" enctype="multipart/form.data">
		<form:errors path="*" cssClass="alert alert-danger" element="div" />
		<fieldset>
			<legend>
				<spring:message code="addProduct.form.legend" />
			</legend>

			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="productID"><spring:message
						code="addProduct.form.productID.label" /></label>
				<div class="col-lg-10">
					<form:input id="productId" path="productId" type="text"
						class="form:input-large" />
					<form:errors path="productId" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="name"><spring:message
						code="addProduct.form.name.label" /></label>
				<div class="col-lg-10">
					<form:input id="name" path="name" type="text"
						class="form:input-large" />
					<form:errors path="name" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="unitPrice"><spring:message
						code="addProduct.form.unitPrice.label" /></label>
				<div class="col-lg-10">
					<form:input id="unitPrice" path="unitPrice" type="text"
						class="form:input-large" />
					<form:errors path="unitPrice" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="manufacturer"><spring:message
						code="addProduct.form.manufacturer.label" /></label>
				<div class="col-lg-10">
					<form:input id="manufacturer" path="manufacturer" type="text"
						class="form:input-large" />
					<form:errors path="manufacturer" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="category"><spring:message
						code="addProduct.form.category.label" /></label>
				<div class="col-lg-10">
					<form:input id="category" path="category" type="text"
						class="form:input-large" />
					<form:errors path="category" cssClass="text-danger" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="unitsInStock"><spring:message
						code="addProduct.form.unitsInStock.label" /></label>
				<div class="col-lg-10">
					<form:input id="unitsInStock" path="unitsInStock" type="text"
						class="form:input-large" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2 col-lg-2" for="unitsInOrder"><spring:message
						code="addProduct.form.unitsInOrder.label" /></label>
				<div class="col-lg-10">
					<form:input id="unitsInOrder" path="unitsInOrder" type="text"
						class="form:input-large" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2" for="description"><spring:message
						code="addProduct.form.description.label" /></label>
				<div class="col-lg-10">
					<form:textarea id="description" path="description" rows="2" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2" for="discontinued"><spring:message
						code="addProduct.form.discontinued.label" /></label>
				<div class="col-lg-10">
					<form:checkbox id="discontinued" path="discontinued" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2" for="condition"><spring:message
						code="addProduct.form.condition.label" /></label>
				<div class="col-lg-10">
					<form:radiobutton path="condition" value="Neu" />
					Neu
					<form:radiobutton path="condition" value="Alt" />
					Alt
					<form:radiobutton path="condition" value="Refurbished" />
					Refurbished
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-2" for="productImage"> <spring:message
						code="addProduct.form.productImage.label" /> 
				</label>
				<div class="col-lg-10">
					<form:input id="productImage" path="productImage" type="file"
 						class="form:input-large" /> 
				</div>
			</div>
			<div class="col-lg-offset-2 col-lg-10">
				<input type="submit" id="btn-Add" class="btn btn-primary"
					value="Hinzufügen" />
			</div>
		</fieldset>
	</form:form>
</section>

</body>
</html>