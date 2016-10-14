package com.se452.easyshop.controllers;

/**
 *
 * @author Camille
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.se452.easyshop.business.User;
import com.se452.easyshop.data.UserDB;

public class UserController extends HttpServlet {

    /*
    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String requestURI = request.getRequestURI();
        String url = "";
       
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
*/
    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String requestURI = request.getRequestURI();
        String url = "";
        if (requestURI.endsWith("/subscribeToEmail")) {
            url = subscribeToEmail(request, response);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }


    private String subscribeToEmail(HttpServletRequest request,
            HttpServletResponse response) {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);

        request.setAttribute("user", user);

        String url;
        String message;
        
        if (UserDB.emailExists(email)) {
            message = "This email address already exists. <br>"
                    + "Please enter another email address.";
            request.setAttribute("message", message);
            url = "/email/index.jsp";
        } else {
            UserDB.insert(user);
            message = "";
            request.setAttribute("message", message);
            url = "/email/thanks.jsp";
        }
        return url;
    }
}
