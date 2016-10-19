<jsp:include page="/share/header.jsp" />
<!-- <jsp:include page="/share/left_column_all.jsp" /> -->

<!-- begin middle column -->

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-12">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<h1>Your cart</h1>
  <c:choose>
      <c:when test="${emptyCart != null}">
          <p>Your cart is empty.</p>
      </c:when>
      <c:otherwise>
        <table class="table">
            <tr>
                <th>Qty</th>
                <th>Description</th>
                <th>Price</th>
                <th>Amount</th>
                <th>&nbsp;</th>
            </tr>
            
          <c:forEach var="item" items="${cart.items}">
              
            <tr>
              <td>
                <form action="<c:url value='/order/updateItem'/>" method="post">
                  <input type="hidden" name="productModel" 
                         value="<c:out value='${item.product.model}'/>">
                  <input type=text name="quantity" 
                         value="<c:out value='${item.quantity}'/>" id="quantity">
                  <input type="submit" value="Update">
                </form>                  
              </td>
              <td>${item.product.description}</td>
              <td>${item.product.priceCurrencyFormat}</td>
              <td>${item.totalCurrencyFormat}</td>
              <td>
                <form action="<c:url value='/order/removeItem'/>" method="post">
                  <input type="hidden" name="productModel" 
                         value="<c:out value='${item.product.model}'/>">
                  <input type="submit" value="Remove">
                </form>                  
              </td>
            </tr>
            
          </c:forEach>
            <tr>
              <td colspan="2">
                <p><b>To change the quantity for an item</b>, enter the new quantity and click on the Update button.</p>
                <p><b>To remove an item</b>, click on the Remove button.</p>
              </td>
              <td colspan="3">&nbsp;</td>
            </tr>
          </table>
      </c:otherwise>
  </c:choose>

          
<form action="<c:url value='/catalog'/>" method="get" id="float_left">
  <input type="submit" value="Continue Shopping">
</form>
          
<c:if test="${emptyCart == null}">
    <!-- Connection is NOT SECURE.  For testing only. -->
    <form action="<c:url value='/order/checkUser'/>" method="post">
      <input type="submit" value="Checkout">
    </form>
</c:if>
  

        </div>
      </div>
    <hr>
    <!-- end middle column -->
    <jsp:include page="/share/footer.jsp" />
</div>
