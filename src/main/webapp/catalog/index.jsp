<jsp:include page="/share/header.jsp" />
<!--<jsp:include page="/share/left_column_catalog.jsp" /> -->

<!-- start the middle column -->

<!-- If necessary, this page could be generated from the database. -->
    <div class="jumbotron">
      <div class="container">
        <h1>The EasyShop Bag Catalog</h1>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <h2>Women's Bag</h2>
            <p><a href="product/bag01">Item Name 1</a></p>
            <p><a href="product/bag02">Item Name 2</a></p>
        </div>
        
        <div class="col-lg-6">
            <h2 class="top_margin">Men's Bag</h2>
            <p><a href="product/men_bag01">Item Name 1</a></p>
            <p><a href="product/men_bag02">Item Name 2</a></p>
            <p><a href="product/men_bag03">Item Name 3</a></p>
        </div>
      </div>

      <hr>

      <jsp:include page="/share/footer.jsp" />
    </div> <!-- /container -->

<!-- end the middle column -->

