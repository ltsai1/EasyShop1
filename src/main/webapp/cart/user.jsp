<jsp:include page="/share/header.jsp" />
<!-- <jsp:include page="/share/left_column_all.jsp" /> -->

<!-- begin middle column -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <div class="container">
      <h1>Enter your name and contact information</h1>
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-12">
            <form action="<c:url value='/order/processUser' />" method=post>
                <label>First Name</label>
                <input type="text" name="firstName"  maxlength=20 value="${user.firstName}" required>
                <br>        
                <label>Last Name</label>
                <input type="text" name="lastName" value="${user.lastName}" required>
                <br>
                <label>Email Address</label>
                <input type="email" name="email" value="${user.email}" required>
                <br>
                <label>Address1</label>
                <input type="text" name="address1" value="${user.address1}" required>
                <br>
                <label>Address2</label>
                <input type="text" name="address2" value="${user.address2}">
                <br>
                <label>City</label>
                <input type="text" name="city" value="${user.city}" required>
                <br>
                <label>State</label>
                <input type="text" name="state" value="${user.state}" required>
                <br>
                <label>Zip Code</label>
                <input type="text" name="zip" value="${user.zip}" required>
                <br>
                <label>&nbsp;</label>
                <input type="submit" value="Continue">
            </form>
        </div>          
      </div>
        <hr>
        <!-- end middle column -->
        <jsp:include page="/share/footer.jsp" />
    </div>




