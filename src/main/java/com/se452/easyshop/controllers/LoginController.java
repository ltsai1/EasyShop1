/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.se452.easyshop.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Camille
 */
@Controller
public class LoginController {
    @RequestMapping("/user_login")
    public String checkUser(HttpServletRequest req, HttpServletResponse res){
       // ModelAndView mv = new ModelAndView();
        //String uname = req.getParameter("uname");
       // String pass = req.getParameter("pass");
        //if(new LoginService().check(uname, pass)){
        //    mv.setViewName("hello.jsp");
       // }
      //  else{
      //      mv.setViewName("index.jsp");
     //   }
        return "/jsp/user_login/index";
    }
    /*
    @RequestMapping("/user_login")
    public ModelAndView checkUser(HttpServletRequest req, HttpServletResponse res){
        ModelAndView mv = new ModelAndView();
        String uname = req.getParameter("uname");
        String pass = req.getParameter("pass");
        if(new LoginService().check(uname, pass)){
            mv.setViewName("hello.jsp");
        }
        else{
            mv.setViewName("index.jsp");
        }
        return mv;
    }
    */
    /*    
    @Override
    @RequestMapping("/user_login")
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String requestURI = request.getRequestURI();
        String url = "/user_login/success.jsp";
       
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    */
    
}
