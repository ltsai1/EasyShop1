<jsp:include page="/share/header.jsp" />
<jsp:include page="/share/left_column_email.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section>
<h1>Join our email list</h1>

<p><i>${message}</i></p>

<form action="<c:url value='/user/subscribeToEmail'/>" method="post">
    <label>Email</label>
    <input type="email" name="email" required><br>
    <label>First Name</label>
    <input type="text" name="firstName" required><br>
    <label>Last Name</label>
    <input type="text" name="lastName" required><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" id="submit">
</form>

</section>

<jsp:include page="/share/footer.jsp" />