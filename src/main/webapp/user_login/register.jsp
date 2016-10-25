<%-- 
    Document   : index
    Created on : Oct 23, 2016, 9:40:40 PM
    Author     : duely
--%>

<jsp:include page="/share/header.jsp" />
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-6">
          <h2>REGISTER</h2>
            <form class="navbar-form navbar-left" role="search">
              <div class="form-group">
                  <input type="text" class="form-control" placeholder="Email"> </br>
                  <input type="password" class="form-control" placeholder="Password"></br>
                  <input type="password" class="form-control" placeholder="Confirm Password">
              </div>
                </br><button type="submit" class="btn btn-default">Register &raquo;</button>
            </form>
        </div>
      </div>

      <hr>

      <jsp:include page="/share/footer.jsp" />
    </div> <!-- /container -->
