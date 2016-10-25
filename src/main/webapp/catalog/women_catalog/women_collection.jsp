
<jsp:include page="/share/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <jsp:include page="/share/left_column_home.jsp" /> -->
    

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "shop";
String userId = "root";
String password = "sesame";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>ProductID</b></td>
<td><b>ProductModel</b></td>
<td><b>ProductDescription</b></td>
<td><b>ProductPrice</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM shop";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">

<td><%=resultSet.getString("ProductID") %></td>
<td><%=resultSet.getString("ProductModel") %></td>
<td><%=resultSet.getString("ProductDescription") %></td>
<td><%=resultSet.getString("ProductPrice") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>




<!-- All Collection -->
<div class="col-md-8">
    <div class="panel panel-info">
	<div class="panel-heading">All Collection</div>
        
        <div class="panel-body">
            
        <c:forEach var="product" items="${products}">    
            
	<div class="row">
            <div class="col-md-4">
		<div class="panel panel-info">
                    <div class="panel-heading"><td>${product.description}</td></div>
			<div class="panel-body">
                            <img src="${product.imageURL}"width="190" height="280" alt="Product Image">
			</div>
			<div class="panel-heading"><p>${product.priceCurrencyFormat}</p>
                            <button style="float:right;"<a class="btn btn-default btn-xs" href="<c:url value='catalog/women_catalog' />" role="button">View Detail</button>
			</div>
		</div>
            </div>
            </c:forEach>

<div class="panel-footer">EasyShop &copy; 2016</div>
    </div>
</div>
	<!-- End All Collection -->




<jsp:include page="/share/footer.jsp" />
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../EasyShop/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
</html>