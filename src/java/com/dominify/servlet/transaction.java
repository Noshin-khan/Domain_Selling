/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.dominify.servlet;

import com.dominify.dao.user_dao;
import com.dominify.entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class transaction extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet transaction</title>");
            out.println("</head>");
            out.println("<body>");
            HttpSession s = request.getSession();
           int co=(int) s.getAttribute("coin");
           User u=new User();
           user_dao ud=new user_dao();
           if(ud.savecoin(co,u.getId())){
               response.sendRedirect("profile.jsp");
           }
           else{
                              response.sendRedirect("coins.jsp");

           }
           
            out.println("</body>");
            out.println("</html>");
        }
    }

}
