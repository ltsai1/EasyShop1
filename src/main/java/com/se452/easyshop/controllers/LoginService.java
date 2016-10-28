/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.se452.easyshop.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Camille
 */
public class LoginService {
    public boolean check(String uname, String pass){
        String url = "jdbc:mysql://127.0.0.1:3306/tsai";
        String u = "root";
        String p = "sesame";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, u, p);
            PreparedStatement pst = con.prepareStatement("select * from user where Email=?");
           pst.setString(1,uname);
           ResultSet rs = pst.executeQuery();
           if(rs.next()){
               return true;
           }
           
       }
        catch(Exception e){
            System.out.println(e);
        }
        return false;
    }
}
