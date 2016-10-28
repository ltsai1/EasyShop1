/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.se452.easyshop.controllers;

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
    
    
}
