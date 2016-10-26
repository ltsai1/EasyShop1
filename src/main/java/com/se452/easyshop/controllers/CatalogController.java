package com.se452.easyshop.controllers;
/**
 *
 * @author Camille
 */
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import com.se452.easyshop.business.*;
import com.se452.easyshop.data.*;
import java.util.List;
import javax.inject.Inject;

public class CatalogController extends HttpServlet {
    
    //testing
    @Inject
    List<Product> allProducts;
    
    @Override
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
        
        String requestURI = request.getRequestURI();
        String url;
        //testing if statment
        if(requestURI.endsWith("women_collection")){
            showAllProducts(request, response);
            request.setAttribute("products", allProducts);
            getServletContext()
            .getRequestDispatcher("women_catalog/women_collection.jsp")
            .forward(request, response);
        }else{
        
            url = showProduct(request, response);
            getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
        
        }
        
        
    
    }
/*
    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String requestURI = request.getRequestURI();
        String url = "/catalog";
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }
*/
    //testing

        private String showAllProducts(HttpServletRequest request, 
            HttpServletResponse response) {
        String productModel = request.getPathInfo();
        
        if (productModel != null) {
            productModel = productModel.substring(1);
            allProducts = ProductDB.selectAllProducts();
            HttpSession session = request.getSession();
            session.setAttribute("products", allProducts);
        }        
        return "/catalog/" + productModel + "/index.jsp";
    }
        
   private String showProduct(HttpServletRequest request, 
            HttpServletResponse response) {
        String productModel = request.getPathInfo();
        
        if (productModel != null) {
            productModel = productModel.substring(1);
            Product product = ProductDB.selectProduct(productModel);
            HttpSession session = request.getSession();
            session.setAttribute("product", product);
        }        
        return "/catalog/" + productModel + "/index.jsp";
    }
      
     
}
