/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.dominify.servlet;

import com.dominify.dao.user_dao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.dominify.entity.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpSession;



public class login extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
           String email= request.getParameter("email");
        String pass  = request.getParameter("password");
        User u=new User(email,pass);
        user_dao ul=new user_dao();
       
               if(ul.getuser(u)){
                  // System.out.println(u.getName());
                  ul.reservedomains(u);
                    HttpSession s=request.getSession();
               s.setAttribute("user", u);
               response.sendRedirect("profile.jsp");
                  // RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
            //  rd.forward(request, response);
                
               }
               else{
               out.print("<p> wrong username or password</p>");
               response.sendRedirect("login.jsp");
             // RequestDispatcher rd1=request.getRequestDispatcher("login.jsp");
            //  rd1.forward(request, response);
               }
               
            out.println("</body>");
            out.println("</html>");
        }
    }

   

}
