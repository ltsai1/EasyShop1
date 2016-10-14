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

public class CatalogController extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest request, 
            HttpServletResponse response)
            throws ServletException, IOException {
        
        String requestURI = request.getRequestURI();
        String url;
        url = showProduct(request, response);
        
        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
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
